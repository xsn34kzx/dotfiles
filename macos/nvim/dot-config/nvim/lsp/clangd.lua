-- NOTE: For full project awareness (libraries, etc.), see
-- https://clangd.llvm.org/installation#compile_commandsjson to create a
-- compile_commands.json file and symlink it to the root of the project.
return {
    cmd = { 
        "clangd" 
    },
    filetypes = {
        "c", "cpp", "objc", "objcpp", "cuda"
    },
    root_markers = {
        ".clangd",
        ".clang-tidy",
        ".clang-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git"
    },
    capabilities = {
        textDocument = {
            completion = {
                editsNearCursor = true,
            },
        },
        offsetEncoding = { "utf-8", "utf-16" },
    },
    on_attach = function(client, bufnr)
        vim.api.nvim_buf_create_user_command(bufnr, "LspClangdSwitchSourceHeader", function()
            local method_name = "textDocument/switchSourceHeader"
            if not client or not client:supports_method(method_name) then
                return vim.notify(("method %s is not supported by any servers active on the current buffer"):format(method_name))
            end
            local params = vim.lsp.util.make_text_document_params(bufnr)
            client:request(method_name, params, function(err, result)
                if err then
                    error(tostring(err))
                end
                if not result then
                    vim.notify("Corresponding file cannot be determined")
                    return
                end
                vim.cmd.edit(vim.uri_to_fname(result))
            end, bufnr)
        end, { desc = "Switch between source and header" })
    end
}
