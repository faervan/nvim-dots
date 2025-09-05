local opts = {
	silent = true,
	noremap = true,
}

-- Sudo write
-- https://ao.bloat.cat/exchange/stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
-- vim.keymap.set("ca", "w!!", 'w !sudo tee > /dev/null "%"')

-- Use tab to shift lines
vim.keymap.set("v", "<S-Tab>", "<gv", opts)
vim.keymap.set("v", "<Tab>", ">gv", opts)

-- Disable mouse
--vim.keymap.set("", "<up>", "<nop>", { noremap = true })
--vim.keymap.set("", "<down>", "<nop>", { noremap = true })
--vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
--vim.keymap.set("i", "<down>", "<nop>", { noremap = true })

--vim.opt.mouse = ""
