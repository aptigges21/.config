
" Source files from nvim directory
let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
      \ 'plugins/vim-polyglot.vim',
      \ 'plugins/plugins.vim',
      \ 'plugins/treesitter.vim',
      \ 'plugins/vim-startify.vim',
      \ 'plugins/markdown-preview.vim',
      \ 'plugins/nvim-bufferline.vim',
      \ 'plugins/vim-floaterm.vim',
      \ 'plugins/papercolor.vim',
      \ 'general/temp.vim',
      \ 'general/leader_config.vim',
      \ 'plugins/lsp.vim',
      \ 'plugins/compe.vim',
      \ 'plugins/auto-pairs.vim',
      \ 'plugins/galaxyline.vim',
      \ 'plugins/gitsigns.vim',
      \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor
