brew install python
brew install python3
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
brew install neovim
gem install neovim

pip  install --upgrade neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim
