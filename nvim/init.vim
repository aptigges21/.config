
" Source files from nvim directory
let g:nvim_config_root = stdpath('config')
let g:config_file_list = ['filetype_options.vim',
			\ 'plugins.vim',
      \ 'leader_config.vim',
      \ 'treesitter.vim'
			\ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor

" Splits and split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype plugin on

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
set background=dark
colorscheme iceberg 
let g:airline_theme='iceberg'
syntax on
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
