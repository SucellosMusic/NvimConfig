vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.wrap = false


--keybinds
vim.api.nvim_set_keymap("n", "<C-Right>", "gt", {})
vim.api.nvim_set_keymap("n", "<C-Left>", "gT", {})
vim.api.nvim_set_keymap("n", "<Up>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<Down>", "<C-w>j", {})
vim.api.nvim_set_keymap("n", "<Left>", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<Right>", "<C-w>l", {})
vim.api.nvim_set_keymap("i", "jk", "<ESC>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<C-j>", "()<Left>", {})
vim.api.nvim_set_keymap("i", "<C-k>", "<Right>{}<Left>", {})
vim.api.nvim_set_keymap("i", "<C-l>", "<CR><CR><Up>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 15

--Lazy
require("config.lazy")

--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

--LSP and Completion
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('pylsp')
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = "LSP Hover Info"})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = 'Go to Definition'})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

--Neotree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {silent = true})

--Colorscheme
vim.cmd.colorscheme "moonfly"
