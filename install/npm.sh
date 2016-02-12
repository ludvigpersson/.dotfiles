brew install nvm

mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install 5.6
nvm use 5.6
nvm alias default 5.6

# Globally install with npm

packages=(
  grunt
  http-server
  nodemon
  release-it
)

npm install -g "${packages[@]}"
