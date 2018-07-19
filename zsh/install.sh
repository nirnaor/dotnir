#!/bin/bash
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone git@github.com:olivierverdier/zsh-git-prompt.git

dir=`pwd`
parentdir="$(dirname "$dir")"
echo $parentdir

# echo DOTNIR_LOCATION=`pwd` >> ~/.zshrc
echo 'DOTNIR_LOCATION='$parentdir >> ~/.zshrc
# ln -s $DOTNIR_LOCATION/zshrc 
