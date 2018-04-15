echo "find me at dotnir .bashrc"
# app
alias p=python

alias g=git
alias gs='git status'
alias gb='git branch'
alias gb='git branch'
alias gb='git branch --sort=-committerdate'
alias gco='git checkout'
alias ga='git add'
alias gd='git diff'
alias mas='git checkout master'
alias semekars='git reset --hard HEAD'
alias gng='g pull &&  npm i -dd && grunt'
alias gyg='g pull &&  yarn install && grunt'
alias ng='npm i -dd && grunt'

alias tm=tmux


# private
alias dotnir=$DOTNIR


# Shell stuuf
alias c=clear
alias x=exit

alias viewer='cd ~/dev/wix/santa-repos/santa'
alias editor='cd ~/dev/wix/santa-repos/santa-editor'
alias core='cd ~/dev/wix/santa-repos/santa-core'
alias ssr='cd ~/dev/wix/santa-repos/santa-site-renderer'

alias fargen='npm i && grunt'

alias rmf=`rm -rf`
alias diverge='git cherry-pick ab1cacce01ec21c8c5148c77072ee22a03c83f57'
alias nodiverge='git revert ab1cacce01ec21c8c5148c77072ee22a03c83f57'
alias dotnir='cd ~/dev/other/dotnir'
alias links='ls -l node_modules | grep ^l'
alias lb='gb | head -n 10'

# Wix stuff.
alias wgpl='nvm use && git pull && yarn && grunt'
alias localdebug='sudo npm run local-debug -- --debugger-port 9280 --local-santa ~/dev/wix/santa-repos/santa'
alias wyg='nvm use && yarn && grunt'
