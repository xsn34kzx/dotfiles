return {
    {
        "stevearc/oil.nvim",
        lazy = false,
        opts = {
            win_options = {
                signcolumn = "yes:2",
            },
        },
        keys = {
            { "<leader>-", "<cmd>Oil<cr>", desc = "Oil - Open Parent Directory" },
        },
    },
    {
        "refractalize/oil-git-status.nvim",
        dependencies = {
            "stevearc/oil.nvim",
        },
        config = true,
    },
}
