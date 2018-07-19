#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone git@github.com:olivierverdier/zsh-git-prompt.git

# ln -s zshrc ~/.zshrc

dir=`pwd`
parentdir="$(dirname "$dir")"

echo export DOTNIR_LOCATION=$parentdir >> ~/.zshrc
# source ~/.zshrc
echo source $parentdir/aliases.sh >> ~/.zshrc
