-- set leader key to space
vim.g.mapleader = " "

-- set jj to exit from insert mode to normal mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true})

-- set clipboard options
vim.opt.clipboard = "unnamedplus"

-- set tab width to 4 space
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- set powershell as default shell

-- set relative line number
vim.wo.relativenumber = true

-- set line break (word wrap)
vim.opt.breakindent = true
vim.opt.formatoptions:remove "t"
vim.opt.linebreak = true

-- set incremental search
vim.opt.incsearch = true

-- set terminal color
vim.opt.termguicolors = true

-- set show 10 line bottom when scrolling
vim.opt.scrolloff = 10

vim.opt.signcolumn = "yes"
vim.opt.isfname:append "@-@"
vim.opt.updatetime = 50

-- keymap change window
-- move to the right
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
-- move to the left
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- move to the bottop
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
-- move to the top
vim.keymap.set("n", "<C-k>", "<C-w>k", {})

-- keymap indent not leave visual mode
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

-- line number
-- toggle linenumber
vim.keymap.set("n", "<leader>n", "<cmd> set nu! <CR>")
-- toggle relativelinenumber
vim.keymap.set("n", "<leader>rn", "<cmd> set rnu! <CR>")

-- split window
-- vertical split
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<CR>", {})
-- horizontal split
vim.keymap.set("n", "<leader>-", "<cmd>split<CR>", {})
