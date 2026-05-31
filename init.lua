vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.wrap = false

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

require("config.lazy")
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('pylsp')

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = "LSP Hover Info"})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = 'Go to Definition'})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {silent = true})

vim.cmd.colorscheme "moonfly"
