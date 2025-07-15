return {
	"sontungexpt/better-diagnostic-virtual-text",
	enabled = false,
	event = "LspAttach",
	config = function()
		vim.diagnostic.config({
			virtual_lines = false,
		})
		require("better-diagnostic-virtual-text").setup({
			ui = {
				above = true,
			},
			inline = false,
		})
	end,
}
