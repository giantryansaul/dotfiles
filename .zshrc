# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="grs"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH=/opt/local/share/man:$MANPATH

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=$LANG

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

alias mvim='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Java 7
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home
# Java 8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# Virtualenv setup
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export PATH=/home/giantryansaul/.local/bin:$PATH
source /usr/local/bin/virtualenvwrapper.sh

# Maven setup
#export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m"
#export M2_HOME=/usr/local/Cellar/maven/3.3.3
#export PATH=/usr/local/Cellar/maven/3.3.3/bin:$PATH
#export PATH="/usr/local/sbin:$PATH"
#export PATH="$HOME/.node/bin:$PATH"

# Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

# Postgres configuration
#export PGDATA=/usr/local/var/postgres

# Work setup file
source ~/.work_setup

# MySQL settings
#export MYSQL_HOME="/usr/local/mysql"
#export PATH="$MYSQL_HOME/bin:$PATH"

# Knife
#export PATH=$PATH:/opt/chef/bin

# NPM
#export PATH="$HOME/.npm-packages/bin:$PATH"

# WSL config for Tmux
#[[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
#    [[ -n "$ATTACH_ONLY" ]] && {
#        tmux a 2>/dev/null || {
#            cd && exec tmux
#        }
#        exit
#    }
#
#    tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
#    exec tmux
#}

cd ~
