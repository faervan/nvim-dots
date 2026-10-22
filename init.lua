require("config.keymaps")
require("config.options")
require("config.lazy")
require("config.autocmds")
require("config.diagnostics")

-- load the color scheme
local file = io.open(os.getenv("HOME") .. "/.config/nvim/theme.txt", "r")
if file then
	local theme = file:read("a")
	vim.cmd("colorscheme " .. theme)
else
	vim.notify("Could not read colorscheme")
end

vim.api.nvim_create_user_command("Zathura", function()
	if vim.bo.filetype ~= "typst" then
		vim.notify("Zathura command is only available for .typ files", vim.log.levels.WARN)
		return
	end

	local pdf = vim.fn.expand("%:p:r") .. ".pdf"
	vim.fn.jobstart({ "zathura", pdf }, { detach = true })
end, {})
