return {
	"sainnhe/gruvbox-material",
	enabled = true,
	priority = 1000,
	config = function()
        vim.g.gruvbox_material_background = "mix"
        vim.g.gruvbox_material_better_performance = 1
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
