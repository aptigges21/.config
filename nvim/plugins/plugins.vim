call plug#begin('~/.vim/plugged')

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'shaunsingh/nord.nvim'

" Misc
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tmhedberg/SimpylFold'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Cosmetics
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'sheerun/vim-polyglot'

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

" LSP and Auto Complete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" Snippets
Plug 'SirVer/ultisnips'

" Comments
Plug 'preservim/nerdcommenter'

" Fuzzy Finding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Verilog and SystemVerilog support
Plug 'vhda/verilog_systemverilog.vim'

" Ctags
Plug 'ludovicchabant/vim-gutentags'

" Auto-Pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()
