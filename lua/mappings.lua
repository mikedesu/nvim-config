--------------------
-- darkmage's custom neovim stuff

-- this key motion is for returning to command mode after :term zsh
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { noremap = true, silent = true })

-- left hand keymap
-- common key motions involving shift/indent

vim.keymap.set("n", ">f", ">>j>>", { noremap = true, silent = true })
vim.keymap.set("n", "<d", "<<k<<", { noremap = true, silent = true })

-- common key motions involving delete
-- delete line
vim.keymap.set("n", "kk", "dd", { noremap = true, silent = true })
-- delete current and next line
vim.keymap.set("n", "kf", "dj", { noremap = true, silent = true })
-- remap h j k l to s d f g
vim.keymap.set("n", "h", "s", { noremap = true, silent = true })
vim.keymap.set("n", "j", "f", { noremap = true, silent = true })
vim.keymap.set("n", "k", "d", { noremap = true, silent = true })
vim.keymap.set("n", "l", "g", { noremap = true, silent = true })
-- remap s d f g to h j k l
vim.keymap.set("n", "s", "h", { noremap = true, silent = true })
vim.keymap.set("n", "d", "k", { noremap = true, silent = true })
vim.keymap.set("n", "f", "j", { noremap = true, silent = true })
vim.keymap.set("n", "g", "l", { noremap = true, silent = true })
-- visual mode remap
-- remap h j k l to s d f g
vim.keymap.set("v", "h", "s", { noremap = true, silent = true })
vim.keymap.set("v", "j", "f", { noremap = true, silent = true })
vim.keymap.set("v", "k", "d", { noremap = true, silent = true })
vim.keymap.set("v", "l", "g", { noremap = true, silent = true })
-- remap s d f g to h j k l
vim.keymap.set("v", "s", "h", { noremap = true, silent = true })
vim.keymap.set("v", "d", "k", { noremap = true, silent = true })
vim.keymap.set("v", "f", "j", { noremap = true, silent = true })
vim.keymap.set("v", "g", "l", { noremap = true, silent = true })

-- set up some useful leader shortcuts so it isnt such a PITA to do shit
--vim.keymap.set("n", "<leader>b", ":bn<enter>", { desc = "Next buffer" })
--vim.keymap.set("n", "<leader>v", ":bp<enter>", { desc = "Previous buffer" })
--vim.keymap.set("n", "<leader>a", "@a", { desc = "Run macro a" })

vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4 -- Size of an indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- autoindent new lines

vim.keymap.set("n", "<leader><left>", "<c-w><c-h>", { desc = "move focus to the left window" })
vim.keymap.set("n", "<leader><right>", "<c-w><c-l>", { desc = "move focus to the right window" })

vim.opt.mouse = ""

vim.keymap.set("n", "<leader>s", function()
	vim.cmd(":CopilotChatStop")
end, { desc = "Run custom function" })

vim.keymap.set("n", "<leader>d", function()
	vim.cmd(":CopilotChatClose")
end, { desc = "Run custom function" })

vim.keymap.set("n", "<leader>o", function()
	vim.cmd(":CopilotChatOpen")
end, { desc = "Run custom function" })

--------------------
-- end of darkmage's custom neovim stuff
--------------------
