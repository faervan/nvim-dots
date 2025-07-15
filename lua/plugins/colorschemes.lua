return {
	-- This plugin installs and updates top-rated color schemes
	"linrongbin16/colorbox.nvim",
	-- don't lazy load
	lazy = false,
	-- load with highest priority
	priority = 1000,
	build = function()
		require("colorbox").update()
	end,
	config = function()
		require("colorbox").setup({ policy = "single" })
		-- vim.cmd("Colorbox update")
	end,
	post_hook = function(color, spec)
		vim.notify(string.format("Colorscheme changed to: %s", vim.inspect(color)))
	end,
}
