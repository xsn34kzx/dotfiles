vim.lsp.enable({
    "ts-ls",
    -- "roslyn" is handled by roslyn.nvim
    "rust-analyzer",
    "gopls",
    "sourcekit-lsp",
})

vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})

-- Must be configured on a machine-by-machine basis
vim.lsp.config("roslyn", {
    cmd = {
        "dotnet",
        vim.fn.expand("$HOME/.nuget/packages/microsoft.codeanalysis.languageserver.osx-arm64/5.0.0-2.25453.4/content/LanguageServer/osx-arm64/Microsoft.CodeAnalysis.LanguageServer.dll"),
        "--logLevel", -- this property is required by the server
        "Information",
        "--extensionLogDirectory", -- this property is required by the server
        vim.fs.joinpath(vim.uv.os_tmpdir(), "roslyn_ls/logs"),
        "--stdio", 
    }
})
