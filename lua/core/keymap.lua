vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
--  See `:help vim.diagnostic.Opts`
vim.diagnostic.config({
    update_in_insert = false,
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = { min = vim.diagnostic.severity.WARN } },

    -- Can switch between these as you prefer
    virtual_text = true, -- Text shows up at the end of the line
    virtual_lines = false, -- Text shows up underneath the line, with virtual lines

    -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = {
        on_jump = function(_, bufnr)
            vim.diagnostic.open_float({
                bufnr = bufnr,
                scope = 'cursor',
                focus = false,
            })
        end,
    },
})
-- Diagnostic configurations
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>l', vim.diagnostic.open_float, { desc = 'Show error' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move window right and left
vim.keymap.set('n', 'zh', '10zh')
vim.keymap.set('n', 'zl', '10zl')

-- Keymap for modifying buffer
vim.keymap.set('n', '<leader>d', ':%bd | NvimTreeToggle<CR>', { desc = 'Close all buffer' })
vim.keymap.set('n', '<leader>r', ':bufdo e<CR>', { desc = 'Reload all buffer' })

-- Yank configurations
vim.keymap.set('n', 'Y', '"+y')
vim.keymap.set('v', 'Y', '"+y')

-- Save configurations
vim.api.nvim_create_user_command('W', 'w', {})

-- Move line
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
