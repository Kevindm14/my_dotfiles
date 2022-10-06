local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>ss', ':source %<CR>', opts)

map('n', '<c-n>', ':NvimTreeToggle<CR>', opts)
map("n", "<c-p>", ":PackerSync<CR>", opts)
map("n", "<c-q>", ":q<CR>", opts)
map("n", "<c-w>", ":w<CR>", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map('n', ';k', ":resize -2<CR>", opts)
map('n', ";j", ":resize +2<CR>", opts)
map('n', ";h", ":vertical resize -2<CR>", opts)
map('n', ";l", ":vertical resize +2<CR>", opts)

map('n', "<leader>ff", ":Telescope find_files <cr>", opts)

-- Diagnostic
vim.cmd "nmap n <Plug>(highlight-current-n-n)"

-- vim.cmd "nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>"
vim.cmd "nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>"
vim.cmd "nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>"
vim.cmd "nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>"
