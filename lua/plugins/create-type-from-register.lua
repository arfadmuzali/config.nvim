local function quickType(lang)
    local buf = vim.fn.getreg('+')
    local tmp = vim.fn.tempname() .. '.json'
    local f = io.open(tmp, 'w')
    f:write(buf)
    f:close()

    local cmd = 'quicktype ' .. tmp .. ' --lang ' .. lang .. ' --just-types 2>&1'
    local output = vim.fn.systemlist(cmd)

    if vim.v.shell_error ~= 0 then
        vim.notify(table.concat(output, '\n'), vim.log.levels.ERROR)
        return
    end
    vim.api.nvim_buf_set_lines(0, vim.fn.line('.'), vim.fn.line('.'), false, output)
end

vim.keymap.set('n', '<leader>pc', function()
    local currentFiletype = vim.bo.filetype

    if currentFiletype == 'go' then
        currentFiletype = 'golang'
    end

    quickType(currentFiletype)
end)

vim.keymap.set('n', '<leader>pg', function()
    quickType('golang')
end)

vim.keymap.set('n', '<leader>pt', function()
    quickType('typescript')
end)

vim.keymap.set('n', '<leader>pz', function()
    quickType('typescript-zod')
end)

return {}
