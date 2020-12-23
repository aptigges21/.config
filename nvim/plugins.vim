call plug#begin('~/.vim/plugged')

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ap/vim-css-color'
Plug 'joshdick/onedark.vim'

Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'airblade/vim-gitgutter'
Plug 'octol/vim-cpp-enhanced-highlight'

" Floating Terminal
Plug 'voldikss/vim-floaterm'

" Latex
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" Necessary Options for markdown
let g:mkdp_filetypes = ['markdown']
let g:mkdp_browser = 'firefox-bin'

" Floating Terminal Options
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_autoclose = 1
