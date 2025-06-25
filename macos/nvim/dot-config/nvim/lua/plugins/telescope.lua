return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)
        -- Extensions
        telescope.load_extension("grapple")
    end,
    cmd = "Telescope",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope - Find Files" },
        { "<leader>lg", "<cmd>Telescope live_grep<cr>", desc = "Telescope - Live Grep" },
        { "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "Telescope - Git Files" },
        { "<leader>gco", "<cmd>Telescope git_commits<cr>", desc = "Telescope - Git Commits" },
        { "<leader>gbr", "<cmd>Telescope git_branches<cr>", desc = "Telescope - Git Branches" },
        { "<leader>mp", "<cmd>Telescope man_pages<cr>", desc = "Telescope - Man Pages" },
        { "<leader>tr", "<cmd>Telescope resume<cr>", desc = "Telescope - Resume" },
        { "<leader>lr", "<cmd>Telescope lsp_references<cr>", desc = "Telescope - LSP References" },
        { "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Telescope - Diagnostics (Current Buffer)" },
        { "<leader>tt", "<cmd>Telescope grapple tags<cr>", desc = "Telescope - Tags" },
    },
}
