#!/bin/bash

# Homebrew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Workspace setup
mkdir ~/workspace 
mkdir ~/personal_workspace
mkdir ~/notebook && mkdir ~/notebook/journal
git clone https://github.com/giantryansaul/notebook.git ~/personal_workspace/notebook
brew install httpie jq tmux maven postgresql reattach-to-user-namespace

# Virtualenv
sudo pip install virtualenvwrapper

# VIM install
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Font install
git clone https://github.com/powerline/fonts ~/.fonts
~/.fonts/install.sh

# Tmux setup
brew install tmux
git clone https://github.com/jimeh/tmux-themepack
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# Oh-my-zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ~/dotfiles/grs.zsh-theme ~/.oh-my-zsh/themes
ln -s ~/dotfiles/.zshrc ~/.zshrc
