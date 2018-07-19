curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew install ack
brew install ctags
brew install tig
brew install vim
brew install the_silver_searcher

ln -s $DOTNIR_LOCATION/vim/vimrc ~/.vimrc
ln -s $DOTNIR_LOCATION/vim/tigrc ~/.tigrc
ln -s $DOTNIR_LOCATION/vim/agignore ~/.agignore
ln -s $DOTNIR_LOCATION/vim/agignore ~/.agignore
ln -s $DOTNIR_LOCATION/vim/ctags ~/.ctags
vim +PluginInstall +qall

#curl https://raw.githubusercontent.com/sudavid4/dotfiles/master/mru > ~/mru.sh
#curl https://raw.githubusercontent.com/sudavid4/dotfiles/master/bin/preview.rb > /bin/preview.rb
