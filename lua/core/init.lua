-- Core Neovim settings, leaders, options, basic keymaps, basic autocmds
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require('core.option')
require('core.keymap')
require('core.autocommand')
