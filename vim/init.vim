" Critical Start
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeFind'] }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'yasuhiroki/github-actions-yaml.vim'

  " Plug 'mhartington/oceanic-next'
  Plug 'morhetz/gruvbox'

  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'iberianpig/tig-explorer.vim'

  Plug 'tpope/vim-commentary'

  " Language specific
  Plug 'pangloss/vim-javascript' 
  Plug 'leafgarland/typescript-vim' 
  Plug 'reasonml-editor/vim-reason-plus'


  " Framework specifc
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

function! Confirm(message, command)
  let yesno = confirm(a:message, "&Yes\n&No", 2)
  if (yesno == 1)
    exec a:command
  else
    echo "User aborted"
  end
endfunc

noremap <Leader>gn :NERDTreeFind<cr>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=60


noremap <c-p> :FZF<cr>
noremap <c-u> :History<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> :wincmd h<cr>
colorscheme gruvbox
inoremap jk <esc>


nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ee :e<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <Leader>c :noh<cr>
noremap <Leader>qq :q<cr>
noremap <Leader>n :set invnumber<cr>
noremap <Leader>ww :w<cr>
noremap <Leader>wd :pwd<cr>
noremap <Leader>wq :wq<cr>
noremap <Leader>swp :! rm -rf ~/.local/share/nvim/swap/<cr>
noremap <Leader>pi :PlugInstall<cr>
noremap <Leader>ff :Ag <c-r>=EscapeForQuery(expand("<cword>"))<cr><cr>
noremap <Leader>fp :echo @% <cr>
noremap <Leader>fc :Ag 
noremap <Leader>t :tabnext <cr>
noremap <Leader>vrf :call Confirm("Revert current file?", "!git checkout %")<cr>
noremap <Leader>vdf  :Git diff %<cr>
noremap <Leader>vdm  :Git diff master<cr>
noremap <Leader>vrs  :Git reset --hard<cr>
noremap <Leader>vmas  :Git checkout master<cr>
noremap <Leader>vsync  :! git checkout master && git reset --hard @~60 && git pull && git checkout - && git merge master <cr>
noremap <Leader>vco  :Git checkout -b 
noremap <Leader>vcb  :Git checkout - <cr>
noremap <Leader>vce  :Git checkout 
noremap <Leader>vpr  :! gh cpr %<cr>
noremap <Leader>vdom  :Git diff origin/master<cr>
noremap <Leader>vdbm  :Git diff master %<cr>
noremap <Leader>vst  :Git stash<cr>
noremap <Leader>vsp  :Git stash pop<cr>
noremap <Leader>vap  :Git add -p %<cr>
noremap <Leader>vaf  :Git add %<cr>
noremap <Leader>vcm  :Git commit<cr>
noremap <Leader>vcf  :Git commit --no-verify<cr>
noremap <Leader>vca  :Gcommit --amend --no-verify<cr>
noremap <Leader>vpu  :Gpush<cr>
noremap <Leader>vpl  :Gpull<cr>
noremap <Leader>vbl  :Gblame<cr>
noremap <Leader>vhs  :TigOpenCurrentFile<cr>
noremap <Leader>gs :TigStatus<cr>
noremap <Leader>vs :Git status<cr>
noremap <Leader>gbr :GBrowse!<cr>
noremap <Leader>nde :!node %:p<cr>
noremap <Leader>tsr :CocRestart<cr>


autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript

set exrc





set notimeout

vnoremap <C-c> "*y

vnoremap <C-v> "*p
map! <C-E> <esc>A

set ignorecase
" Critical End

set nofixendofline



so ~/.config/nvim/coc.vim

" Gary file navigation
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ef :edit %%
map <leader>cd :cd %% <cr>
map <leader>gal :cd ~/dev/wix/gallery <cr>
nnoremap <leader><leader> <c-^>

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction
map <leader>uu :call HandleURL()<cr>

" Hide status line start
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>
" Hide status line start



