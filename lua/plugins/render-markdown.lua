return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.nvim",
	},
	opts = {
		heading = {
			border = true,
			width = "block",
			min_width = 30,
			left_pad = 2,
			right_pad = 4,
		},
		code = {
			width = "block",
			left_pad = 2,
			right_pad = 2,
		},
	},
}
