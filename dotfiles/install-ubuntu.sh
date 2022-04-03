# initial update
sudo apt update
sudo apt upgrade -y

# Install git and cURL
sudo apt install git curl -y

# Install nvm and use it to install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts

# Set up git config and aliases
git config --global user.name Erin
git config --global user.email github@eritbh.me
git config --global alias.l "log --oneline --decorate --graph"
git config --global alias.la "log --oneline --decorate --graph --all"
git config --global pull.rebase true

# Install zsh and stuff
sudo apt install zsh -y
curl https://raw.githubusercontent.com/eritbh/eritbh/main/dotfiles/.zshrc > ~/.zshrc
echo 'Run `chsh -s /bin/zsh` to set your login shell.'
