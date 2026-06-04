vim.pack.add({ Gh('rebelot/kanagawa.nvim') })
require('kanagawa').setup({
    transparent = false,
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = 'none',
                },
            },
        },
    },
})

vim.cmd.colorscheme('kanagawa')
