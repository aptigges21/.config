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

" Declare previewer for latex live preview
let g:livepreview_previewer = 'zathura'

" File Finding
set path+=**
set wildmenu

" Aesthetics
colorscheme PaperColor
syntax off
set number
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

set encoding=utf-8

" GitGutter Settings
set updatetime=500
highlight! link SignColumn LineNr
set signcolumn=yes

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Remove auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Snippets as a part of auto completion
let g:completion_enable_snippet = 'UltiSnips'

set autochdir

" Auto Completion
set completeopt=menuone,noselect
