--------------------
-- darkmage's custom neovim stuff
-- left hand keymap
--

-- this key motion is for returning to command mode after :term zsh
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { noremap = true, silent = true })

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

local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "<C-e>", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)

vim.keymap.set("n", "<leader>r", function()
	harpoon:list():remove()
end)

vim.keymap.set("n", "<leader>1", function()
	harpoon:list():select(1)
end)

vim.keymap.set("n", "<leader>2", function()
	harpoon:list():select(2)
end)

vim.keymap.set("n", "<leader>3", function()
	harpoon:list():select(3)
end)

vim.keymap.set("n", "<leader>4", function()
	harpoon:list():select(4)
end)

vim.keymap.set("n", "<leader>n", function()
	harpoon:list():next()
end)

vim.keymap.set("n", "<leader>p", function()
	harpoon:list():prev()
end)

--vim.keymap.set("n", "<leader>1", function()
--	harpoon:list():remove()
--end)

--vim.keymap.set("n", "<C-s>", function()
--	harpoon:list():select(2)
--end)
--vim.keymap.set("n", "<C-d>", function()
--	harpoon:list():select(3)
--end)
--vim.keymap.set("n", "<C-f>", function()
--	harpoon:list():select(4)
--end)

--------------------
-- end of darkmage's custom neovim stuff
--------------------
