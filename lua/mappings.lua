local map = vim.api.nvim_set_keymap
local opts = { noremap = true}

vim.g.mapleader = ','

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

map('n', 'gd', '<Plug>(coc-definition)', opts)
map('n', 'gi', '<Plug>(coc-implementation)', opts);
map('n', '<leader>r', '<Plug>(floaterm-new)', opts);
