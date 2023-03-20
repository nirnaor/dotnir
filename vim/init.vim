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

  Plug 'rescript-lang/vim-rescript'



  " Framework specifc
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'github/copilot.vim'

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


noremap <c-p> :GFiles<cr>
noremap <c-u> :History<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> :wincmd h<cr>
colorscheme gruvbox
inoremap jk <esc>


nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>cp :Copilot panel<cr>
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
noremap <Leader>vsb  :Git branch --sort=-committerdate<cr>
noremap <Leader>vpr :! git push && gh pr create --fill<cr>
noremap <Leader>vdom  :Git diff origin/master<cr>
noremap <Leader>vdbm  :Git diff master %<cr>
noremap <Leader>vst  :Git stash<cr>
noremap <Leader>vsp  :Git stash pop<cr>
noremap <Leader>vap  :Git add -p %<cr>
noremap <Leader>vaf  :Git add %<cr>
noremap <Leader>vcm  :Git commit<cr>
noremap <Leader>vcf  :Git commit --no-verify<cr>
noremap <Leader>vca  :Gcommit --amend --no-verify<cr>
noremap <Leader>vpu  :Git push<cr>
noremap <Leader>vpl  :Gpull<cr>
noremap <Leader>vbl  :Git blame<cr>
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



" coc start
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Note that <buffer> allows us to use different commands with the same keybindings depending
" on the filetype. This is useful if to override your e.g. ALE bindings while working on
" ReScript projects.
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>r :RescriptFormat<CR>
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>t :RescriptTypeHint<CR>
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>b :RescriptBuild<CR>
autocmd FileType rescript nnoremap <silent> <buffer> gd :RescriptJumpToDefinition<CR>
set autoread
au CursorHold * checktime  
