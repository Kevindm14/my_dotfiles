require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context_start = true,
    show_trailing_blankline_indent = false,
    use_treesitter = true,
    filetype_exclude = {
        'help', 'startify', 'alpha', 'dashboard', 'packer', 'neogitstatus', 'NvimTree', 'lsp-installer',
        ""
    },
    buftype_exclude = { 'terminal', 'nofile' },
    show_current_context = true,
    context_patterns = {
        "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object",
        "^table", "block", "arguments", "if_statement", "else_clause", "jsx_element",
        "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement",
        "operation_type"
    }
}
