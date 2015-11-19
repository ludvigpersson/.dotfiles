if [ -d "$HOME/projects/dotfiles" ]; then
    DOTFILES_DIR="$HOME/projects/dotfiles"
else
    echo "Unable to find dotfiles, exiting."
    return # `exit 1` would quit the shell itself
fi

# Finally we can source the dotfiles (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.{functions,env,alias}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done
