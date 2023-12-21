require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

-- Initialize global options
vim.opt.syntax = 'enable'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autochdir = true
vim.opt.mouse = 'a'

-- Set the leader key
vim.g.mapleader = ' '

-- Set up key mappings
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Auto-compile and auto-source the init.lua file on save
vim.api.nvim_exec([[
augroup AutoCompile
    autocmd!
    autocmd BufWritePost init.lua source <afile> | lua print('Init.lua sourced.')
augroup END
]], false)
