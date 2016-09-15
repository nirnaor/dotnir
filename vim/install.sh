git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install ack
brew install tig
brew install vim

ln -s $DOTNIR/vim/vimrc ~/.vimrc
ln -s $DOTNIR/vim/ackrc ~/.ackrc
vim +PluginInstall +qall
