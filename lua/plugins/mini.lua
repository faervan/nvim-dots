return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.misc").setup()
		MiniMisc.setup_restore_cursor()
		MiniMisc.setup_auto_root()
		require("mini.splitjoin").setup()
		require("mini.icons").setup()
	end,
}
