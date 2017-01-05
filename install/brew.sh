# Install Homebrew

echo ">>> Installing brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew update
brew upgrade

# Install cask

echo ">>> Installing cask"
brew install caskroom/cask/brew-cask

# Install cask apps

apps=(
  atom
  iterm2
  git
)

echo ">>> Installing cask apps"
brew cask install "${apps[@]}"

# Install packages

packages=(
  bash-completion2
  hub
  httpie
  jq
  python
  tree
  vim
  wget
)

echo ">>> Installing brew apps"
brew install "${packages[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
