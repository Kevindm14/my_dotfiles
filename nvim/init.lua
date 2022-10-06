require('impatient')
-- require('lua/file_type') -- Easily speed up your neovim startup time!

require('settings')
require('colorschemes-config.monokai')
-- require('staline-config')
require('nvim-tree-config')
require('mappings')
require('lualine-config')
require('lsp-config')
require('telescope-config')
require('packer-config')
require('neoscroll-config')

require("highlight_current_n").setup({
    highlight_group = "IncSearch" -- highlight group name to use for highlight
})
