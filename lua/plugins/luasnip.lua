vim.pack.add({ { src = Gh('L3MON4D3/LuaSnip'), version = vim.version.range('2.*') } })

-- local ls = require('luasnip')
require('luasnip').setup({})
require('luasnip/loaders/from_vscode').lazy_load()
