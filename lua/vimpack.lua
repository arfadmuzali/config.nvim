-- Core Plugin
vim.pack.add({
    { src = Gh('nvim-lua/plenary.nvim') }, 
    { src = Gh('folke/lazydev.nvim') },
    { src = Gh('nvim-tree/nvim-web-devicons') },
})

require('plugins')
