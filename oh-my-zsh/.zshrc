#-------------------------------------
# Wassup Yall, Kirby Says Hi
#-------------------------------------

# Load RVM into a shell session *as a function*

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kirbyjames/.oh-my-zsh

# ZSH_THEME="afowler"
ZSH_THEME="cloud"
plugins=(git)

# ------------------------------------
# Show Process/ Configure Processes
# ------------------------------------
alias macx='sudo killall -HUP mDNSResponder'
alias psx='ps aux'
alias pgl='ping google.com'
alias cl='clear'

# ------------------------------------
# Navigation
# ------------------------------------
alias cdk='cd Workspace/KBOY/Personal/'
alias cdcs='cd Workspace/KBOY/CS'
alias cdkp='cd Workspace/KBOY/Projects/'
alias cdko='cd Workspace/KBOY/OpenSource/'
alias cdvj='cd ~/Desktop/vagrant-javascript/src'
alias cdvs='cd ~/Desktop/QQ/vagrant/src/'
alias cdva='cd ~/Desktop/QQ/vagrant/agile/chess-app'
alias cdvd='cd ~/Desktop/QQ/vagrant/agile-development/chess-app'
alias cdvp='cd ~/Desktop/QQ/vagrant/projects'
alias cdc='cd Workspace/C++'
alias cdj='cd Workspace/Java'
alias cdjs='cd Workspace/Javascript'
alias cdr='cd Workspace/Ruby'
alias cdp='cd Workspace/Python'
alias cdpr='cd Workspace/Practice'
alias cdgg='cd Workspace/KBOY/GrowGoogle'
alias cde='cd Workspace/Endertech'
alias t='touch'
alias p='python3'
alias rbm='ruby -r minitest/pride'
alias rb='ruby'
alias vzs='vim .zshrc'
alias vgu='vagrant up'
alias vgs='vagrant ssh'
alias vgh='vagrant halt'
alias gtg='git grok'
alias a='atom .'
alias bup='brew update && brew upgrade'
alias bcl='brew cleanup'
alias glog='git log --graph --full-history --all --oneline --color --decorate --date-order'
alias grs='git remote show origin'
alias pgb='php ./bin/console'

# ------------------------------------
# Docker alias and function
# ------------------------------------
# Get latest container ID
alias dl="docker ps -l -q"
# Get container process
alias dps="docker ps"
# Get process included stop container
alias dpa="docker ps -a"
# Get images
alias di="docker images"
# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"
# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"
alias dc="docker-compose"
# Stop all containers
dstop() { docker stop $(docker ps -a -q); }
# Remove all containers
drm() { docker rm $(docker ps -a -q); }
# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
# Remove all images
dri() { docker rmi $(docker images -q); }

# ------------------------------------
# Kubernetes
# ------------------------------------
alias k='kubectl'
alias kg='kubectl get'
alias kgpn='kubectl get pods -n'
# Show Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# ------------------------------------
# Open VS Code
# ------------------------------------
function code {
    if [[ $# = 0 ]]
    then
       open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# ------------------------------------
# Shell Integration
# ------------------------------------
# source ~/.iterm2_shell_integration.`basename $SHELL`

# ------------------------------------
# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
# ------------------------------------
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
eval $(/usr/libexec/path_helper -s)

# ------------------------------------
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# ------------------------------------
export PATH="$PATH:$HOME/.rvm/bin"

# ------------------------------------
# Add npm-packages path
# ------------------------------------
export PATH="$HOME/.npm-packages/bin:$PATH"

# ------------------------------------
# PHP Version Configuration
# PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
# export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH
# ------------------------------------

# ------------------------------------
# Sourcing Bash & ZSH
# ------------------------------------
source ~/.bash_profile
source $ZSH/oh-my-zsh.sh

# ------------------------------------
# added by travis gem
# ------------------------------------
[ -f /Users/kirbyjames/.travis/travis.sh ] && source /Users/kirbyjames/.travis/travis.sh
