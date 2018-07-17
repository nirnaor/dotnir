#!/bin/bash
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone git@github.com:olivierverdier/zsh-git-prompt.git
echo DOTNIR_LOCATION=`pwd` >> ~/.zshrc
ln -s $DOTNIR_LOCATION/zshrc 
