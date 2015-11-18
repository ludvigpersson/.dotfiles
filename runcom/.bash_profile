for DOTFILE in `find /Users/oscarp/projects/dotfiles`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
