vim.lsp.handlers['textDocument/publishDiagnostics'] =
vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = { spacing = 5, severity_limit = 'Warning' },
    update_in_insert = true
})

require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "html", "javascript", "lua", "go", "toml", "css", "dockerfile", "json", "sql", "scss"
    },
    highlight = { enable = true, additional_vim_regex_highlighting = false, disable = { "latex" } },
    autotag = { enable = true },
    auto_install = true,
    rainbow = {
        enable = true,
        extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    autopairs = { enable = true }
}
