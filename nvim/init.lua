local cmd = vim.cmd

cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
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
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpate' }
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
	use 'mhinz/vim-startify'
	-- LSP and Auto Complete
	use { 'neovim/nvim-lspconfig', config = function() require'lsp' end }
	use { 'hrsh7th/nvim-compe' }
	-- Comments
	use 'preservim/nerdcommenter'
	-- Verilog & SystemVerilog
	use 'vhda/verilog_systemverilog.vim'
end)

require('general')
require('treesitter')
require('leader')

vim.o.completeopt="menuone,noselect"
local map = vim.api.nvim_set_keymap

cmd 'set shortmess+=c'
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = false;
    nvim_lsp = true;
    nvim_lua = false;
    vsnip = true;
    emoji = false;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end


map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

cmd('inoremap <silent><expr> <C-Space> compe#complete()')
cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")
