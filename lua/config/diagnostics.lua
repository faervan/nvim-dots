-- 100% copy-pasta
-- see https://old.reddit.com/r/neovim/comments/1jlq1iz/showing_diagnostics_virtual_lines_only_for/mk5hxh7/
local diagnostic_signs = {
	[vim.diagnostic.severity.ERROR] = "",
	[vim.diagnostic.severity.WARN] = "",
	[vim.diagnostic.severity.INFO] = "",
	[vim.diagnostic.severity.HINT] = "󰌵",
}

local shorter_source_names = {
	["Lua Diagnostics."] = "Lua",
	["Lua Syntax Check."] = "Lua",
}

function diagnostic_format(diagnostic)
	return string.format(
		"%s %s (%s): %s",
		diagnostic_signs[diagnostic.severity],
		shorter_source_names[diagnostic.source] or diagnostic.source,
		diagnostic.code,
		diagnostic.message
	)
end

vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = "",
		format = diagnostic_format,
	},
	signs = {
		text = diagnostic_signs,
	},
	virtual_lines = {
		current_line = true,
		format = diagnostic_format,
	},
	underline = true,
	severity_sort = true,
})

function toggle_diagnostics()
	vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end

vim.keymap.set("n", "<leader>td", "<cmd>lua toggle_diagnostics()<cr>", { desc = "Toggle diagnostics" })
