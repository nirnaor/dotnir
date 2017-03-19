curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew install ack
brew install ctags
brew install tig
brew install vim
brew install the_silver_searcher

ln -s $DOTNIR/vim/vimrc ~/.vimrc
ln -s $DOTNIR/vim/tigrc ~/.tigrc
ln -s $DOTNIR/vim/ackrc ~/.ackrc
ln -s $DOTNIR/vim/agignore ~/.agignore
ln -s $DOTNIR/vim/ctags ~/.ctags
vim +PluginInstall +qall
