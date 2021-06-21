call plug#begin('~/.vim/plugged')

" Themes
Plug 'NLKNguyen/papercolor-theme'

" Misc
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'

" Git integration
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Indentation help
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Cosmetics
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'sheerun/vim-polyglot'

" File Explorer
Plug 'kyazdani42/nvim-tree.lua'

" Bufferline and controls
Plug 'moll/vim-bbye'
Plug 'akinsho/nvim-bufferline.lua'

" Floating Terminal
Plug 'voldikss/vim-floaterm'

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

" Verilog and SystemVerilog support
Plug 'vhda/verilog_systemverilog.vim'

" Ctags
Plug 'ludovicchabant/vim-gutentags'

" Auto-Pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()
