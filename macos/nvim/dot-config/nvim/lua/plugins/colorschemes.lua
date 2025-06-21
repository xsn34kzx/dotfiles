return {
	"sainnhe/gruvbox-material",
	enabled = true,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_background = "material"
		vim.g.gruvbox_material_background = "mix"
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
