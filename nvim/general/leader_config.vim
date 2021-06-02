let mapleader=" "
noremap <Space> <Nop>

" General Commands
noremap <silent><C-s>     :w<CR>

" Add Nerd Tree support
noremap <silent><leader>e :NERDTreeToggle<CR>
noremap <silent><leader>h :noh<CR>

" Section for floating terminal and other popups
" Add Markdown Preview Support
noremap <silent><leader>tm :MarkdownPreview<CR>
" Floating Terminal Commands
noremap <silent><leader>tt :FloatermNew<CR>
noremap <silent><leader>tr :FloatermNew ranger<CR>
noremap <silent><leader>tg :FloatermNew lazygit<CR>

" Action section
noremap <silent><leader>ah :noh<CR>

" Buffer Commands
noremap <silent><tab> :BufferLineCyclePrev<CR>
noremap <silent><S-tab> :BufferLineCycleNext<CR>
noremap <silent><leader>bh :BufferLineMoveNext<CR>
noremap <silent><leader>bl :BufferLineMovePrev<CR>
noremap <silent><leader>bd :Bdelete<CR>

" Fuzzy Finding
nnoremap <silent><leader>ff <cmd>Telescope find_files<CR>
nnoremap <silent><leader>fg <cmd>Telescope live_grep<CR>
nnoremap <silent><leader>fl <cmd>Telescope git_files<CR>

" Treesitter
noremap <silent><leader>p :TSPlaygroundToggle<CR>
