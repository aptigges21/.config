" Splits and split navigations
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype plugin on

" Commenting
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Declare previewer for latex live preview
let g:livepreview_previewer = 'zathura'

" File Finding
set path+=**
set wildmenu

" text highlighting for C/C++
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Aesthetics
let g:nord_contrast = 1
let g:nord_disable_background = 1
colorscheme iceberg
let g:airline_theme='iceberg'
syntax off
set number
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

set encoding=utf-8

" GitGutter Settings
set updatetime=500
highlight! link SignColumn LineNr
set signcolumn=yes

" Cliboard Setup
set clipboard+=unnamedplus

" Better indentation
vnoremap < <gv
vnoremap > >gv

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Snippets as a part of auto completion
let g:completion_enable_snippet = 'UltiSnips'

set autochdir

" Auto Completion
set completeopt=menuone,noselect

" Recommended by vim-polyglot
set nocompatible
