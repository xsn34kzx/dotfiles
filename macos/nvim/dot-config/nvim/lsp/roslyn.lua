return {
    cmd = {
        "dotnet",
        -- Must be configured on a machine-by-machine basis
        vim.fn.expand("$HOME/.nuget/packages/microsoft.codeanalysis.languageserver.osx-arm64/5.0.0-1.25277.114/content/LanguageServer/osx-arm64/Microsoft.CodeAnalysis.LanguageServer.dll"),
        "--logLevel=Information",
        "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
        "--stdio",
    }
}
