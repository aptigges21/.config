local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local wo = vim.wo
local bo = vim.bo
local o = vim.o
local g = vim.g

-- General
o.autochdir = true
o.encoding = 'utf-8'

local options = { noremap = true, silent = true }

-- Splits and split navigations
o.splitbelow = true
o.splitright = true
map('n', '<C-J>', '<C-W><C-J>', options)
map('n', '<C-K>', '<C-W><C-K>', options)
map('n', '<C-L>', '<C-W><C-L>', options)
map('n', '<C-H>', '<C-W><C-H>', options)


-- Aesthetics
cmd 'colorscheme tokyonight'
cmd 'set noshowmode'
g.tokyonight_style = 'night'
bo.syntax = 'off'
o.laststatus = 2
wo.number = true
o.termguicolors = true
wo.signcolumn = 'yes'

-- Better indentation
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- Remove auto commenting
cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- Get out of insert mode faster
map('i', 'jj', '<esc>', options)

-- Floaterm setup
g.floaterm_width = 0.85
g.floaterm_height = 0.85
g.floaterm_autoclose = 1
g.floaterm_opener = 'vsplit'

-- NerdCommenter setup
g.NERDSpaceDelims = 1

-- Formating
o.fileformat = 'unix'
cmd([[
  au BufNewFile,BufRead *.c set ts=4
]])

-- Disable vim plugins
g.loaded_gzip = 0
g.loaded_tar = 0
g.loaded_tarPlugin = 0
g.loaded_zipPlugin = 0
g.loaded_2htmlPlugin = 0
g.loaded_netrw = 0
g.loaded_netrwPlugin = 0
g.loaded_matchit = 0
g.loaded_spec = 0
