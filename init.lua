require("config.keymaps")
require("config.options")
require("config.lazy")
require("config.diagnostics")

-- load the color scheme
local file = io.open(os.getenv("HOME") .. "/.config/nvim/theme.txt", "r")
if file then
	local theme = file:read("a")
	vim.cmd("colorscheme " .. theme)
else
	vim.notify("Could not read colorscheme")
end
