return {
	"simonmclean/triptych.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"antosha417/nvim-lsp-file-operations", -- optional LSP integration
	},
	opts = {}, -- config options here
	keys = {
		{ "<leader>-", ":Triptych<CR>" },
	},
}
