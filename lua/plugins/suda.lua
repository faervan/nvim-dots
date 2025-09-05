return {
	"lambdalisue/vim-suda",
	config = function()
		vim.keymap.set("ca", "w!!", "SudaWrite")
	end,
}
