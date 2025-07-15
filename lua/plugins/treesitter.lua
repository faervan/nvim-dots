return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "master",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "rust", "regex" },
			highlight = { enable = true },
			additional_vim_regex_highlighting = false,
		})
	end
}
