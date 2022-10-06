local default_options = {
    -- perfomance
    redrawtime = 1500,
    timeoutlen = 250,
    ttimeoutlen = 10,
    updatetime = 100,

    autoindent = true,
    cursorline = true,
    expandtab = true,
    fillchars = {
        diff = '∙', -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
        eob = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
        fold = '·', -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
        vert = '│' -- window border when window splits vertically ─ ┴ ┬ ┤ ├ ┼
    },
    tabstop = 4,
    laststatus = 3,
    lazyredraw = true,
    number = true,
    hlsearch = false,
    incsearch = true,
    ignorecase = true,
    smarttab = true,
    shiftwidth = 4,
    shiftround = true,
    smartcase = true,
    softtabstop = 4,
    splitbelow = true,
    splitright = true,
    showmode = false,
    showmatch = true,
    scrolloff = 18,
    showtabline = 2,
    swapfile = false,
    shortmess = "",
    undofile = false,
    fileencoding = 'utf-8',
    termguicolors = true,
    relativenumber = false,
    mouse = "a",
    more = false,
    wrap = false
}

for key, value in pairs(default_options) do vim.opt[key] = value end
