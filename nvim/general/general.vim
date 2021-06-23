" Splits and split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Commenting
let g:NERDSpaceDelims = 1

" Aesthetics
colorscheme PaperColor
syntax off
set number
set laststatus=2
set noshowmode

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Remove auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" General
set autochdir
filetype plugin on
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
