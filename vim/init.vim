" Critical Start
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeFind'] }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'mhartington/oceanic-next'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-commentary'

  " Language specific
  Plug 'pangloss/vim-javascript' 

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

noremap <Leader>gn :NERDTreeFind<cr>
let NERDTreeShowHidden=1

noremap <c-p> :FZF<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> :wincmd h<cr>
colorscheme OceanicNext
inoremap jk <esc>


nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <Leader>c :noh<cr>
noremap <Leader>n :set invnumber<cr>
noremap <Leader>ww :w<cr>
noremap <Leader>wq :wq<cr>
noremap <Leader>q :q<cr>
noremap <Leader>pi :PlugInstall<cr>
noremap <Leader>ff :Ag <c-r>=EscapeForQuery(expand("<cword>"))<cr><cr>
noremap <Leader>fc :Ag 
noremap <Leader>t :tabnext <cr>

vnoremap <C-c> "*y
vnoremap <C-v> "*p
map! <C-E> <esc>A

set ignorecase
" Critical End



so ~/.config/nvim/coc.vim
