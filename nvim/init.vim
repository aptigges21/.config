
" Source files from nvim directory
let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
      \ 'general/filetype_options.vim',
      \ 'plugins/plugins.vim',
      \ 'plugins/vim-startify.vim',
      \ 'plugins/markdown-preview.vim',
      \ 'plugins/nvim-bufferline.vim',
      \ 'plugins/vim-floaterm.vim',
      \ 'general/temp.vim',
      \ 'general/leader_config.vim',
      \ 'plugins/treesitter.vim',
			\ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor
