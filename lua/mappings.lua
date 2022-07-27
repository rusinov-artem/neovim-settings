local map = vim.api.nvim_set_keymap
local opts = { noremap = true}

vim.g.mapleader = ','

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

map('n', 'gd', '<Plug>(coc-definition)', opts)
map('n', 'gi', '<Plug>(coc-implementation)', opts);
map('n', 'K', '<cmd>call CocActionAsync("doHover")<CR>', opts);
map('n', '<leader>r', '<Plug>(coc-rename)', opts);

map('n', '<leader>t', '<cmd>FloatermNew<CR>', opts);
map('n', '<leader>tv', '<cmd>FloatermNew --position=topleft --autoclose=0 ls <CR>', opts);

-- nice way of finding staff in current file
map('n', '<C-_>', '<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<CR>', opts);
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts);

-- debuging keymap
map("n", "<leader>dd", ":lua require'dap'.continue()<CR>", opts)
map("n", "<leader>di", ":lua require'dap'.step_into()<CR>", opts)
map("n", "<leader>do", ":lua require'dap'.step_over()<CR>", opts)
map("n", "<leader>doo", ":lua require'dap'.step_out()<CR>", opts)
map("n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>", opts)
map("n", "<leader>dr", ":lua require('dap').repl.open()<CR>", opts)


