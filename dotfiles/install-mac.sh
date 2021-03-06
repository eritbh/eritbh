#!/bin/zsh

# Install Developer Tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install nvm and use it to install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 12
node --version

# Install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Install thefuck
brew install thefuck

# Set up git config and aliases
git config --global user.name "Erin"
git config --global user.email "github@eritbh.me"
git config --global credential.helper osxkeychain # Cache remote credentials
git config --global alias.l "log --oneline --decorate --graph"
git config --global alias.la "log --oneline --decorate --graph --all"
git config --global pull.rebase true

# Copy .zshrc
curl https://raw.githubusercontent.com/eritbh/eritbh/main/dotfiles/.zshrc > ~/.zshrc

# Copy over VS Code config files
mkdir -p ~/Library/Application\ Support/Code/User # Make the settings directory in case it hasn't been installed yet
curl https://raw.githubusercontent.com/eritbh/eritbh/main/dotfiles/vscode-settings.json > ~/Library/Application\ Support/Code/User/settings.json
curl https://raw.githubusercontent.com/eritbh/eritbh/main/dotfiles/vscode-keybindings.json > ~/Library/Application\ Support/Code/User/keybindings.json
