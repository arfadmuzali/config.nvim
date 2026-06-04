vim.pack.add({ Gh('akinsho/toggleterm.nvim') })

require('toggleterm').setup({
    open_mapping = [[<c-\>]],

    hide_numbers = true,
    direction = 'float',
    float_opts = {
        border = 'curved',
        title_pos = 'center',
    },
})
