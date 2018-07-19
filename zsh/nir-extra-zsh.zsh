# ~/.zshrc
function load-nvm () {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    if ! type nvm >/dev/null; then
      load-nvm
    fi
    nvm use
  fi
}
# chpwd load-nvmrc
chpwd() {
  ls
  load-nvmrc
}
ZSH_THEME="muse"