return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>lg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "Fit Git Files" },
	},
}
