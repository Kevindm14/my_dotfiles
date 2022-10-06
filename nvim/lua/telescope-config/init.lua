local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        -- layout_config = {
        --     width = 0.75,
        --     preview_cutoff = 120,
        --     horizontal = {
        --         preview_width = function(_, cols, _)
        --             if cols < 120 then return math.floor(cols * 0.5) end
        --             return math.floor(cols * 0.6)
        --         end,
        --         mirror = false
        --     },
        --     vertical = { mirror = false }
        -- },
        layout_config = {
            horizontal = { mirror = false, prompt_position = "top", preview_width = 0.4 },
            vertical = { mirror = false },
            width = 0.8,
            height = 0.9,
            preview_cutoff = 80
        },
        find_command = {
            'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'
        },
        prompt_prefix = '🔍 ',
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        file_sorter = require 'telescope.sorters'.get_fuzzy_file,
        -- file_ignore_patterns = {},
        file_ignore_patterns = {
            "__pycache__/", "__pycache__/*", "build/", "gradle/", "node_modules/", "node_modules/*",
            "smalljre_*/*", "target/", "vendor/*", "venv/", ".dart_tool/", ".git/", ".github/",
            ".gradle/", ".idea/", ".vscode/", "%.sqlite3", "%.ipynb", "%.lock", "%.pdb", "%.dll",
            "%.class", "%.exe", "%.cache", "%.pdf", "%.dylib", "%.jar", "%.docx", "%.met", "%.burp",
            "%.mp4", "%.mkv", "%.rar", "%.zip", "%.7z", "%.tar", "%.bz2", "%.epub", "%.flac", "%.tar.gz"
        },
        generic_sorter = require 'telescope.sorters'.get_generic_fuzzy_sorter,
        path_display = {},
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
        buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                ["<esc>"] = actions.close,
                ["<CR>"] = actions.select_default + actions.center
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
            }
        },
        pickers = {
            find_files = { hidden = true },
            live_grep = {
                -- @usage don't include the filename in the search results
                only_sort_text = true
            }
        }
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case". the default case_mode is "smart_case"
        },
        media_files = {
            -- filetypes whitelist
            filetypes = { "png", "jpg", "mp4", "webm", "pdf" },
            find_cmd = "fd" -- find command (defaults to `fd`)
        }
    }
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('media_files')
