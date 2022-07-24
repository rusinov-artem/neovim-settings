local map = vim.api.nvim_set_keymap
local opts = { noremap = true}

vim.g.mapleader = ','

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

map('n', 'gd', '<Plug>(coc-definition)', opts)
map('n', 'gi', '<Plug>(coc-implementation)', opts);

map('n', '<leader>t', '<cmd>FloatermNew<CR>', opts);
map('n', '<leader>tv', '<cmd>FloatermNew --position=topleft --autoclose=0 ls <CR>', opts);

-- nice way of finding staff in current file
map('n', '<C-_>', '<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<CR>', opts);
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts);
