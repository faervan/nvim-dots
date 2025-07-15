return {
	"nvimdev/lspsaga.nvim",
	lazy = false,
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		symbol_in_winbar = {
			enable = true,
			folder_level = 2,
		},
		hover = {
			open_cmd = "!zen-browser",
		},
	},
	keys = {
		{ "K", "<cmd>Lspsaga hover_doc<CR>" },
	},
}
