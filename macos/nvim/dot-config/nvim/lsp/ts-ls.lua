return {
    cmd = {
        "typescript-language-server",
        "--stdio",
    },
    filetypes = {
        "typescript", "javascript"
    },
    root_markers = {
        "tsconfig.json",
        "package-lock.json",
        "package.json",
        "bun.lock",
        ".git",
    }
}
