set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree.git'
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
" Plugin 'Shougo/neocomplete'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'bendavis78/vim-polymer'
Plugin 'mattn/emmet-vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'

" let g:neocomplete#enable_at_startup = 1


" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nocompatible
filetype plugin on
" runtime macros/matchit.vim

map <C-n> :NERDTreeToggle<CR>
noremap <Leader>gn :NERDTreeFind<cr>


set ruler
set rulerformat=%l,%v

syntax on

vnoremap <C-c> "*y
vnoremap <C-v> "*p
map! <C-E> <esc>A





" Search {{{1
set incsearch   " incremental search
set ignorecase  " ignore case when search
set smartcase   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch    " highlight search terms
set wrapscan    " wrap around when searching

" Reduce timeout after <ESC> is received. {{{1
set ttimeout
set ttimeoutlen=20
set notimeout
set number
" set nowrap

" Escaped search {{{1
func! EscapeForQuery(text)
  let text = substitute(a:text, '\v(\[|\]|\$|\^)', '\\\1', 'g')
  let text = substitute(text, "'", "''", 'g')
  return text
endfunc
" confirm hazardus command()
function! Confirm(message, command)
  let yesno = confirm(a:message, "&Yes\n&No", 2)
  if (yesno == 1)
    exec a:command
  else
    echo "User aborted"
  end
endfunc

noremap <Leader>ff :Ack! <c-r>=EscapeForQuery(expand("<cword>"))<cr><cr>
vnoremap <Leader>ff "9y:Ack! '<c-r>=EscapeRegisterForQuery(9)<cr>'<cr>
noremap <Leader>fc :Ack! 
noremap <Leader>da Bd2f"x
noremap <Leader>fg :call WebSearch("https://google.com/search?q=%query%")<cr>
noremap <Leader>fo :call WebSearch("http://stackoverflow.com/search?q=%query%")<cr>
vnoremap <Leader>fg "9y:call Browse("https://google.com/search?q=<c-r>9")<cr>
vnoremap <Leader>fo "9y:call Browse("http://stackoverflow.com/search?q=<c-r>9")<cr>

noremap <Leader>vs :silent !tig status<cr>:redraw!<cr>
noremap <Leader>vrf :call Confirm("Revert current file?", "!git checkout %")<cr>
noremap <Leader>vrp :!git co -p %<cr>
noremap <Leader>vd :!clear; tmux clear-history; git diff %<cr>
"noremap <Leader>vd :silent !clear; git diff %<cr>:redraw!<cr>
noremap <Leader>vaf :!git add %<cr>
noremap <Leader>vap :!git add -p %<cr>
noremap <Leader>vh :silent !tig %<cr>:redraw!<cr>
noremap <Leader>vc :Gcommit<cr>





noremap <Leader>ef :e <C-R>=expand("%:p:h") . $delimiter <cr>
noremap <Leader>et :tabe <C-R>=expand("%:p:h") . $delimiter <cr>
noremap <Leader>rf :read <C-R>=expand("%:p:h") . $delimiter <cr>
noremap <Leader>ew :w<cr>
noremap <Leader>ww :w<cr>
noremap <Leader>wq :wq<cr>
noremap <Leader>wa :wa<cr>
noremap <Leader>c :noh<cr>
noremap <Leader>er :call RevertFile()<cr>
noremap <Leader>e"' :s/"/'/g<cr>
noremap <Leader>e'" :s/'/"/g<cr>
noremap <C-w> :q<cr>
" noremap <Leader>rws :%s/\s\+$//<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" "complete"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#auto_completion_start_length = 4
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_include_object = 1
let g:rubycomplete_include_objectspace = 1





filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
imap <C-Return> <CR><CR><C-o>k<Tab>

nnoremap <Up> :bnext<CR>
nnoremap <Down> :bprevious<CR>



highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

nmap <Leader>b :NERDTreeFind<CR>
set colorcolumn=79
"let @q='079lF i
"'
set noswapfile
set backspace=indent,eol,start
set nopaste



" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

