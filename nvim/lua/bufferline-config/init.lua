vim.opt.showtabline = 2

require("bufferline").setup {
    options = {
        mode = "buffers",
        numbers = "ordinal",

        active = true,
        on_config_done = nil,
        keymap = { normal_mode = {} },
        max_name_length = 22,
        max_prefix_length = 18,
        diagnostics = "nvim_lsp",
        tab_size = 22,
        left_trunc_marker = "",
        right_trunc_marker = "",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = '',
        show_close_icon = false,
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        color_icons = true,
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        enforce_regular_tabs = true,
        always_show_bufferline = false,
        view = "multiwindow",
        separator_style = { "", "" }, -- options "slant" | "thick" | "thin" | { 'any', 'any' },
        offsets = {
            -- options function , text_" "h always_show_bufferline = false
            { filetype = "NvimTree", text = "Explorer", text_align = "left" }
        },
        hover = {
            enabled = false, -- requires nvim 0.8+
            delay = 200,
            reveal = { "close" }
        },
        sort_by = "id"
    },
    highlights = {
        fill = { bg = { highlight = "BufferLineFill", attribute = "bg" } },
        background = { -- current tab
            fg = { highlight = "BufferCurrent", attribute = "fg" },
            bg = { highlight = "BufferCurrent", attribute = "bg" }
        },
        separator = { fg = { highlight = "BufferSeparator", attribute = "fg" } },
        separator_selected = { fg = { highlight = "BufferSeparatorSelected", attribute = "fg" } },
        close_button_selected = {
            fg = { highlight = "BufferCloseButtonSelected", attribute = "fg" },
            bg = { highlight = "BufferCloseButtonSelected", attribute = "bg" }
        },
        duplicate = {
            fg = { highlight = "BufferCurrentSign", attribute = "fg" },
            bg = { highlight = "BufferLineFill", attribute = "bg" }
        },
        duplicate_selected = { fg = { highlight = "BufferCurrentSign", attribute = "fg" } },
        modified = {
            fg = { highlight = "BufferCurrentSign", attribute = "fg" },
            bg = { highlight = "BufferLineFill", attribute = "bg" }
        },
        modified_selected = { fg = { highlight = "BufferCurrentSign", attribute = "fg" } },
        numbers = { bg = { highlight = "BuffNumbers", attribute = "bg" } },

        tab_selected = {
            fg = { highlight = "TabSelectedFG", attribute = "fg" },
            bg = { highlight = "TabSelectedBG", attribute = "bg" }
        },
        tab = {
            fg = { highlight = "TabFG", attribute = "fg" },
            bg = { highlight = "TabBG", attribute = "bg" }
        },
        tab_close = {
            fg = { highlight = "TabFG", attribute = "fg" },
            bg = { highlight = "TabBG", attribute = "bg" }
        },
        close_button = {
            fg = { highlight = "TabFG", attribute = "fg" },
            bg = { highlight = "TabBG", attribute = "bg" }
        }

        -- duplicate_visible = {
        -- },
        -- close_button = {
        -- },
        -- close_button_visible = {
        -- },
        -- tab_selected = {
        -- },
        -- buffer_visible = {
        -- },
        -- buffer_selected = {
        -- },
        -- modified_visible = {
        -- },
        -- separator_visible = {
        -- },
        -- indicator_selected = {
        -- },
    }
}
vim.cmd [[
  nnoremap <silent><TAB> :BufferLineCycleNext<CR>
  nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
