return {
    "cbochs/grapple.nvim",
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
        { "<leader>tf", "<cmd>Grapple toggle<cr>", desc = "Grapple - Tag File" },
        { "<leader>tn", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple - Next Tag"},
        { "<leader>tp", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple - Previous Tag"},
    }
}
