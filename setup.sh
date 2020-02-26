#!/bin/bash
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Requirements before installing
echo "You probably already installed Chrome, LastPass and added your SSH key to GitHub..."
read -p "On Chrome, set your default browser to Chrome from settings. Press any key to continue..."
read -p "Install Magnet and Lightshot from the App Store. Press any key to continue once done..."
read -p "On System Prefs, go to Mouse, turn off 'Scross direction: Natural', Press any key to continue..."
read -p "On System Prefs, go to Keyboard, turn up Key Repeat and Delay Until Repeat to Fastest and Shortest respectively. Press any key to continue..."

read -p "About ot install Homebrew, press any key to continue..."

# Homebrew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install tools
open https://www.postman.com/downloads/
read -p "Press any key to continue once you've installed Postman. Login with Google account..."

open https://iterm2.com/
read -p "Press any key once you've installed iTerm2..."

open https://www.mozilla.org/en-US/firefox/new/
read -p "Press any key once you've installed Firefox..."

open https://www.jetbrains.com/toolbox-app/
read -p "Press any key once you've installed JetBrains Toolbox App..."
read -p "Login to Jetbrains. Install Pycharm, Android Studio and IntelliJ. Press any key once they've begun to download..."

open https://download.docker.com/mac/stable/Docker.dmg
read -p "Press any key once you've installed Docker..."

open https://slack.com/downloads/mac
read -p "Press any key once you've install Slack..."

# Install JDK 1.8+
echo "Download the Java 8 JDK"
open http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
read -p "Press any key to continue once you've installed Java..."

# Workspace setup
mkdir ~/workspace 
mkdir ~/personal
touch ~/.work_setup
brew install lazydocker yarn httpie jq tmux maven postgresql tfenv python3 vim nvm
alias python='python3'
alias pip='pip3'

# Terraform
tfenv install 0.11.14

# Virtualenv
pip install virtualenvwrapper
mkvirtualenv streem
workon streem

# Python install
pip install awscli requests pre-commit

# VIM install
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Font install
git clone https://github.com/powerline/fonts ~/.fonts
~/.fonts/install.sh

# Tmux setup
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# Oh-my-zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ~/dotfiles/grs.zsh-theme ~/.oh-my-zsh/themes
mv ~/.zshrc ~/.zshrc.orig
ln -s ~/dotfiles/.zshrc ~/.zshrc

# Git setup
git config --global pull.rebase true
git config --global push.default current
git config --global user.name "Ryan Saul"
git config --global user.email "ryan.saul@streem.pro"

echo "All done installing, now open iTerm.)"
echo "Go to Prefs > General > Selection > Check 'Applications in terminal may access clipboard'"
echo "Go to Profile > General > Set Send text at start to 'tmux'"
echo "Go to Profile > Text > Change Font to Ubuntu Mono derivative Powerline and 16 pt"
echo "Restart iTerm, then run 'nvm install 8', then good to go!!!"
