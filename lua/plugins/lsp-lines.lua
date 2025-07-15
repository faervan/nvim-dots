return {
	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	enabled = false,
	opts = {},
	-- require("lsp_lines").toggle
	-- vim.diagnostic.config({ virtual_lines = false })
	-- vim.diagnostic.config({ virtual_lines = { only_current_line = true } })
	-- vim.diagnostic.config({ virtual_lines = { highlight_whole_line = false } })
	config = function()
		vim.diagnostic.config({ virtual_text = false })
		vim.diagnostic.config({ virtual_lines = { only_current_line = true } })
	end,
}
