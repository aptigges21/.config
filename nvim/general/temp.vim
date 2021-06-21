" Splits and split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype plugin on

" Commenting
let g:NERDSpaceDelims = 1

" Aesthetics
colorscheme PaperColor
syntax off
set number
set laststatus=2
set noshowmode

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

set encoding=utf-8

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Remove auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set autochdir
