brew install nvm

mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install 4.2
nvm use 4.2
nvm alias default 4.2

# Globally install with npm

packages=(
  grunt
  http-server
  nodemon
  release-it
)

npm install -g "${packages[@]}"
