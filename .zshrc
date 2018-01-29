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
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colorize web-search rails git bundler osx rake ruby brew capistrano cp git-extras gem github npm rvm redis-cli screen gpg-agent)

function test_repo {
(git log | head -1 | cut -d' ' -f2 | grep `git ls-remote origin HEAD | cut -c-41` && echo 'Up to date') || printf '\33[031mNot up to date\33[037m\n';
}

source $ZSH/oh-my-zsh.sh

# Customize to your needs...      
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
export PATH=$PATH:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/Users/andral/android-sdk:/Users/andral/android-sdk/tools

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

# ------- Intra shortcuts

alias bu="bundle"
alias buf="bu update panda_core"
alias bufu="bu && buf"
alias bucop="bufu && git add Gemfile.lock && git commit -m 'bundle'; ggpnp"
alias buco="bufu && git add Gemfile.lock && git commit -m 'bundle'"
alias mes="buco && git tag \"staging-🚀 -$(date '+%Y%m%d%H%M%S')\" && ggpush --tags"
alias mep="buco && git tag \"prod-🚀 -$(date '+%Y%m%d%H%M%S')\" && ggpush --tags"
alias api-monitor="multitail -l 'ssh deployer@intra-worker3 -p 4222 \"tail -f /home/deployer/intra/api/current/log/actions.log\"' -l 'ssh deployer@intra-worker2 -p 4222 \"tail -f /home/deployer/intra/api/current/log/actions.log\"' -l 'ssh deployer@intra-worker1 -p 4222 \"tail -f /home/deployer/intra/api/current/log/actions.log\"'"


alias pcat="colorize"

#
#
# ------- Gcc shortcuts

export PATH="/usr/local/sbin:$PATH"
source ~/.bash_aliases

echo "Fuuuuuuuu 💫"

PHP_AUTOCONF="/usr/local/bin/autoconf"
source ~/.bash_aliases

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# docker
eval `docker-machine env 2>/dev/null`

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


# kill -0 checks to see if the pid exists
export GPG_TTY=`tty`
export GOPATH=$HOME/Dev

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/andral/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/andral/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/andral/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/andral/google-cloud-sdk/completion.zsh.inc'
fi

export KUBECONFIG=$KUBECONFIG:~/.kube/config:~/.kube/prod-config
source <(kubectl completion zsh)
alias kud="kubectl get deploy -o json | jq -r '.items | .[] | {name: .metadata.name, image: .spec.template.spec.containers[0].image, replicas: .spec.replicas}'"
alias kup="kubectl get pods"
alias kus="kubectl get services"
alias kun="kubectl get nodes"
alias kupa="kubectl get pods --all-namespaces"
PATH=$PATH:~/.local/bin
# export PATH="$PATH:`yarn global bin`"
export PATH="$HOME/.yarn/bin:$PATH"
nvm use stable

export PATH=$PATH:/Users/andral/bin

source '/Users/andral/lib/azure-cli/az.completion'

export GITLAB_API_ENDPOINT=https://git.pandascore.co/api/v4
export GITLAB_API_PRIVATE_TOKEN=dbAYuoshNFPZJtrgWcHZ
export ERL_AFLAGS="-kernel shell_history enabled"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

