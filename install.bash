#!/bin/bash
# Homebrew

# TODO: Default installation folder for mongodb - should not be insside the dotnir folder.
# THIS IS NOT NEEDED ANYMORE touch ~/.bash_profile | echo export PATH=$PATH:/Volumes/DataHD/dev/dotnir/mongodb/bin/ >> ~/.bash_profile

# sudo easy_install pip

# echo PATH="/usr/local/bin:/usr/local/sbin:$PATH" >> ~/.bash_profile
# brew install zsh

# touch ~/.zshrc | echo "#This is the ZSHRC file" >> ~/.zshrc
# chsh -s /usr/local/bin/zsh $USER
# sudo mv /etc/{zshenv,zshrc}
# curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
# echo export PATH=$PATH:/Volumes/DataHD/dev/dotnir/mongodb/bin/ >> ~/.zshrc

# TODO: This is not working 
# curl -sS https://www.macupdate.com/download/40034/iTerm2_v1_0_0.zip > iTerm2_v1_0_0.zip

# cat aliases.txt >> ~/.zshrc
# brew install git
# Great


/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew install node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
brew install yarn



#npm install -g livereloadx
brew tap caskroom/cask

brew cask install iterm2
brew cask install postman
brew cask install google-chrome
brew cask install dash
brew cask install spotify
brew cask install karbiner
brew cask install firefox
brew cask install whatsapp
brew cask install flycut
brew cask install bettertouchtool
brew cask install spectacle
brew cask install visual-studio-code
brew cask install marta
brew install tig

ln gitconfig ~/.gitconfig
