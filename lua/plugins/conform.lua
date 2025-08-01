return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			toml = { "taplo" },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			-- timeout_ms = 500,
			-- lsp_format = "fallback",
		},
	},
}
