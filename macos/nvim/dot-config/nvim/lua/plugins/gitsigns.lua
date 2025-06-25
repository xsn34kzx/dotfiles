return {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    opts = {},
    keys = {
        { "<leader>gl", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Gitsigns - Toggle Current Line Blame" },
        { "<leader>gb", "<cmd>Gitsigns blame<cr>", desc = "Gitsigns - Open Git Blame" },
        { "<leader>gp", "<cmd>Gitsigns preview_hunk_inline<cr>", desc = "Gitsigns - Preview Hunk (Inline)" },
        { "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Gitsigns - Reset Hunk" },
        { "<leader>gn", "<cmd>Gitsigns nav_hunk next<cr>", desc = "Gitsigns - Next Hunk" },
        { "<leader>gp", "<cmd>Gitsigns nav_hunk prev<cr>", desc = "Gitsigns - Previous Hunk" },
	},
}
