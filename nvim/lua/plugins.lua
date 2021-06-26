local cmd = vim.cmd

cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Load Packer
	use  {'wbthomason/packer.nvim', opt = true}
	-- Themes
	use 'folke/tokyonight.nvim'
	-- Misc
	use 'tpope/vim-surround'
	use 'jiangmiao/auto-pairs'
	use 'ap/vim-css-color'
	-- Git Integration
	use { 'lewis6991/gitsigns.nvim',
		requires = {'nvim-lua/plenary.nvim'} ,
		config = function() require('gitsigns').setup() end
	}
	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', config = function() require'treesitter' end,	run = 'TSUpate' }
	-- GUI
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		config = function() require'statusline' end,
		requires = {'kyazdani42/nvim-web-devicons'},
	}
	use 'sheerun/vim-polyglot'
	-- File Explorer
	use 'kyazdani42/nvim-tree.lua'
	-- Bufferline
	use 'moll/vim-bbye'
	use { 'akinsho/nvim-bufferline.lua', config = function() require('bufferline').setup() end }
	-- Floating Terminal
	use 'voldikss/vim-floaterm'
	-- Start Screen
	use { 'mhinz/vim-startify', config = function () require'vim-startify' end }
	-- LSP and Auto Complete
	use { 'neovim/nvim-lspconfig', config = function() require'lsp' end }
	use { 'hrsh7th/nvim-compe', config = function () require'nvim-compe' end }
  use 'hrsh7th/vim-vsnip'
	-- Comments
	use 'preservim/nerdcommenter'
	-- Verilog & SystemVerilog
	use 'vhda/verilog_systemverilog.vim'
end)
