export DOTNIR=`pwd`
echo $DOTNIR

apps=( vim tmux linters bettertouchtool )
for i in "${apps[@]}"
do
  f=$DOTNIR/$i/install.sh
  echo executing $f
  bash $f
done

export FZF_DEFAULT_COMMAND='ag -g ""'
ff (){ command $@           $(fzf) ; }
fd (){ command $@ $(dirname $(fzf)); }
