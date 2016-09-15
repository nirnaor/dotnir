export DOTNIR=`pwd`
echo $DOTNIR

apps=( vim tmux iterm2 )
for i in "${apps[@]}"
do
  f=$DOTNIR/$i/install.sh
  echo executing $f
  bash $f
done
