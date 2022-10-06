require("nvim-tree").setup({
    disable_netrw = true,
    system_open = { cmd = nil, args = {} },
    update_cwd = true,
    diagnostics = {
        show_on_dirs = false,
        icons = { hint = "", info = "", warning = "", error = "" }
    },
    auto_reload_on_write = true,
    git = { enable = true, ignore = false, timeout = 200 },
    view = {
        width = 30,
        hide_root_folder = false,
        side = "left",
        mappings = { custom_only = false, list = {} },
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
    renderer = {
        indent_markers = {
            enable = true,
            icons = { corner = "└", edge = "│", item = "│", none = " " }
        },
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌"
                },
                folder = { default = "", open = "", empty = "", empty_open = "", symlink = "" }
            }
        },
        highlight_git = true,
        root_folder_modifier = ":t"
    }
})
