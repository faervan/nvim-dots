vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.wgsl" },
	callback = function()
		vim.opt.commentstring = "// %s"
	end,
})
