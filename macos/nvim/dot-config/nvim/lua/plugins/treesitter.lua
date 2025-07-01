return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "c_sharp",
            "javascript",
            "typescript",
            "tsx",
            "hlsl"
        }
    },
}
