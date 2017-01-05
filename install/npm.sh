brew install nvm

mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install 7.4.0
nvm use 7.4.0
nvm alias default 7.4.0

# Globally install with npm

packages=(
  grunt-cli
  http-server
  nodemon
  release-it
)

npm install -g "${packages[@]}"
