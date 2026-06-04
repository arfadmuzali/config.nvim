-- Enable faster startup by caching compiled Lua modules
vim.loader.enable()

---@param repo string
---@return string
local function gh(repo)
    return 'https://github.com/' .. repo
end

---@param repo string
---@return string
function Gh(repo)
    return 'https://github.com/' .. repo
end

require('core')
require('hooks')
require('vimpack')

-- ============================================================
-- SECTION 8: TREESITTER
-- Parser installation, syntax highlighting, folds, indentation
-- ============================================================
do
end
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
