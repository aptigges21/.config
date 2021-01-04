call plug#begin('~/.vim/plugged')

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ap/vim-css-color'
Plug 'joshdick/onedark.vim'

" Misc
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tmhedberg/SimpylFold'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Polyglot
Plug 'sheerun/vim-polyglot'

" Cosmetics
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'

" Bufferline and controls
Plug 'moll/vim-bbye'
Plug 'akinsho/nvim-bufferline.lua'

" Floating Terminal
Plug 'voldikss/vim-floaterm'

" Latex
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Start Screen
Plug 'mhinz/vim-startify'

call plug#end()
