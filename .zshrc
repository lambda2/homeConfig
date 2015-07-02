# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

function test_repo {
(git log | head -1 | cut -d' ' -f2 | grep `git ls-remote origin HEAD | cut -c-41` && echo 'Up to date') || printf '\33[031mNot up to date\33[037m\n';
}

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib64/qt-3.3/bin:/Users/andral/Library/Python/2.7/bin:/usr/local/bin:/home/lambda2/scripts:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/lambda2/Android/adt/sdk:/home/lambda2/Android/adt/sdk/tools:/home/lambda2/Android/adt/sdk/platform-tools:/home/lambda2/.local/bin:/home/lambda2/bin:/home/lambda2/Android/adt/sdk:/home/lambda2/Android/adt/sdk/tools:/home/lambda2/Android/adt/sdk/platform-tools


export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk
PATH=$PATH:$HOME/Android/adt/sdk:$HOME/Android/adt/sdk/tools 
PATH=$PATH:$HOME/Android/adt/sdk/platform-tools
export PATH

source ~/.git-prompt.sh
alias l="ls -la"
alias p="cd .."
alias pt="cd ..; cd "
alias f="find . -name "
alias gen="touch file_{0..9}"

# ------ Git shortcuts

alias gs="git status"
alias gc="git commit -m "
alias gp="git push"
alias ga="git add"
alias gl="git log --graph"
alias gsf="git submodule foreach"

# ------- Gcc shortcuts

alias cm="gcc -Wall -Wextra -Werror -o bin "


alias www="cd /var/www/html"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function fu(){
	curl -k -H "Content-Type: application/json" "https://dashboard.42.fr/crawler/pull/$1/" | grep ".......42.fr" || echo "User not found"
}
export PATH="$(brew --prefix homebrew/php/php56)/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
PHP_AUTOCONF="/usr/local/bin/autoconf"

export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source /Users/andral/Library/Python/2.7/bin/virtualenvwrapper.sh

source ~/.bash_aliases
