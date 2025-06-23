return {
    cmd = { 
        vim.fn.expand("$HOME/go/bin/gopls")
    },
    filetypes = {
        "go", "gomod", "gowork", "gotmpl", "gosum"
    },
    root_markers = {
        "go.mod",
        "go.work",
        ".git"
    }
}
