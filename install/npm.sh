brew install nvm

mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install 6.8.1
nvm use 6.8.1
nvm alias default 6.8.1

# Globally install with npm

packages=(
  grunt
  http-server
  nodemon
  release-it
)

npm install -g "${packages[@]}"
