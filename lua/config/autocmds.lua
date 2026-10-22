vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.wgsl" },
	callback = function()
		vim.opt.commentstring = "// %s"
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "typst",
	callback = function(ev)
		vim.api.nvim_create_autocmd("BufWritePost", {
			buffer = ev.buf,
			callback = function()
				vim.fn.system({ "typst", "c", vim.api.nvim_buf_get_name(ev.buf) })
			end,
		})
	end,
})
