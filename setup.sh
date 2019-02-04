#!/bin/bash

# Homebrew install
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

# Install JDK 1.8+
echo "Download the Java 8 JDK"
open http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
read -p "Press any key to continue once you've installed Java..."

# Workspace setup
mkdir ~/workspace 
mkdir ~/personal
brew install 
brew install httpie jq tmux maven postgresql reattach-to-user-namespace

# Virtualenv
sudo pip3 install virtualenvwrapper

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
ln -s ~/dotfiles/.zshrc ~/.zshrc
reattach-to-user-namespace
