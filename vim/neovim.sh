brew install python
brew install python3
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
brew install neovim
gem install neovim

pip  install --upgrade neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config/nvim
ln vimrc ~/.config/nvim/init.vim
