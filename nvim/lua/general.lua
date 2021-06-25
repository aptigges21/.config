local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local wo = vim.wo
local o = vim.o

-- General
cmd 'set autochdir'
cmd 'filetype plugin on'
cmd 'set encoding=utf-8'

local options = { noremap = true, silent = true }

-- Splits and split navigations
cmd 'set splitbelow'
cmd 'set splitright'
map('n', '<C-J>', '<C-W><C-J>', options)
map('n', '<C-K>', '<C-W><C-K>', options)
map('n', '<C-L>', '<C-W><C-L>', options)
map('n', '<C-H>', '<C-W><C-H>', options)

-- Commenting
cmd 'let g:NERDSpaceDelims = 1'

-- Aesthetics
cmd 'colorscheme tokyonight'
vim.g.tokyonight_style = 'night'
cmd 'syntax off'
o.laststatus = 2
wo.number = true
cmd 'set noshowmode'
cmd 'set termguicolors'
wo.signcolumn = 'yes'

-- Better indentation
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- Remove auto commenting
cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- Get out of insert mode faster
map('i', 'jj', '<esc>', options)

-- Floaterm setup
vim.g.floaterm_width = 0.85
vim.g.floaterm_height = 0.85
vim.g.floaterm_autoclose = 1
vim.g.floaterm_opener = 'vsplit'
