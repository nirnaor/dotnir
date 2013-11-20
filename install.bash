#!/bin/bash

# Homebrew
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
# brew doctor
# brew update

# TODO: Default installation folder for mongodb - should not be insside the dotnir folder.
# TODO: Default configuration file for mongo?
# MongoDB (Broken on mavericks with homebrew so I install manually)
# curl -O http://downloads.mongodb.org/osx/mongodb-osx-x86_64-2.4.8.tgz
# tar -zxvf mongodb-osx-x86_64-2.4.8.tgz
# mkdir -p mongodb
# cp -R -n mongodb-osx-x86_64-2.4.8/ mongodb
# rm -rf mongodb-osx*
# touch ~/.bash_profile | echo export PATH=$PATH:/Volumes/DataHD/dev/dotnir/mongodb/bin/ >> ~/.bash_profile

# sudo easy_install pip

# echo PATH="/usr/local/bin:/usr/local/sbin:$PATH" >> ~/.bash_profile
# brew install zsh

# touch ~/.zshrc | echo "#This is the ZSHRC file" >> ~/.zshrc
# chsh -s /usr/local/bin/zsh $USER
# sudo mv /etc/{zshenv,zshrc}
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
