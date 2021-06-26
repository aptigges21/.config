local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<space>', '', {})
vim.g.mapleader = ' '

-- Action Commands
map('n', '<leader>ah', ':noh<CR>', options)

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', options)

-- Floating Terminal
map('n', '<leader>tt', ':FloatermToggle<CR>', options)
map('n', '<leader>tps', ':FloatermNew python3<CR>', options)
map('n', '<leader>tpr', ':FloatermNew python3 %<CR>', options)
map('n', '<leader>tpp', ':FloatermNew python3 -i %<CR>', options)
map('n', '<leader>tg', ':FloatermNew --autoclose=0 go run %<CR>', options)
map('n', '<leader>tr', ':FloatermNew ranger<CR>', options)
map('n', '<leader>tr', ':FloatermNew ranger<CR>', options)
map('n', '<leader>tl', ':FloatermNew lazygit<CR>', options)
map('n', '<leader>tc', ':FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>', options)
map('n', '<leader>tf', ':FloatermNew fzf<CR>', options)

-- Buffer Commands
map('n', '<tab>', ':BufferLineCycleNext<CR>', options)
map('n', '<S-tab>', ':BufferLineCyclePrev<CR>', options)
map('n', '<leader>bh', ':BufferLineMoveNext<CR>', options)
map('n', '<leader>bl', ':BufferLineMovePrev<CR>', options)
map('n', '<leader>bd', ':Bdelete<CR>', options)
