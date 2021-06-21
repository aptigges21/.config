let mapleader=" "
noremap <Space> <Nop>

" General Commands
noremap <silent><C-s>     :w<CR>
nnoremap <silent><leader>ah :noh<CR>
inoremap <silent>jj <Esc>

" Add Nerd Tree support
noremap <silent><leader>e :NERDTreeToggle<CR>

" Add Markdown Preview Support
noremap <silent><leader>tm :MarkdownPreview<CR>

" Floating Terminal Commands
noremap <silent><leader>tt :FloatermToggle<CR>
noremap <silent><leader>tp :FloatermPrev<CR>
noremap <silent><leader>tn :FloatermNext<CR>
noremap <silent><leader>ta :FloatermNew<CR>
noremap <silent><leader>ts :FloatermNew python<CR>
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

" Treesitter
nnoremap <silent><leader>p :TSPlaygroundToggle<CR>
