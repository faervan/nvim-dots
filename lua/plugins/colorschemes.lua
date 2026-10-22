return {
	{
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
			-- require("colorbox").setup({ policy = "single", timing = "startup" })
			-- vim.cmd("Colorbox update")
		end,
		post_hook = function(color, spec)
			vim.notify(string.format("Colorscheme changed to: %s", vim.inspect(color)))
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme tokyonight-night]])
		end,
	},

	{
		"rebelot/kanagawa.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme kanagawa]])
			vim.api.nvim_set_hl(0, "Comment", {
				-- fg = "#ffcc66",
				fg = "#ffb84d",
			})
		end,
	},

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
