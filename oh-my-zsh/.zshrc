# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kirbyjames/.oh-my-zsh

ZSH_THEME="afowler"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# LAZINESS #
alias macx='sudo killall -HUP mDNSResponder'
alias psx='ps aux'
alias cl='clear'
alias cdk='cd Workspace/KBOY/Personal/'
alias cdcs='cd Workspace/KBOY/CS'
alias cdkp='cd Workspace/KBOY/Projects/'
alias cdko='cd Workspace/KBOY/OpenSource/'
alias cdvj='cd ~/Desktop/vagrant-javascript/src'
alias cdvs='cd ~/Desktop/vagrant/src/'
alias cdva='cd ~/Desktop/vagrant/agile/chess-app'
alias cdvd='cd ~/Desktop/vagrant/agile-development/chess-app'
alias cdvp='cd ~/Desktop/vagrant/projects'
alias cdc='cd Workspace/C++'
alias cdj='cd Workspace/Java'
alias cdjs='cd Workspace/Javascript'
alias cdr='cd Workspace/Ruby'
alias cdp='cd Workspace/Python'
alias cdpr='cd Workspace/Practice'
alias t='touch'
alias pgl='ping google.com'
alias p='python3'
alias rbm='ruby -r minitest/pride'
alias rb='ruby'
alias vzs='vim .zshrc'
alias vgu='vagrant up'
alias vgs='vagrant ssh'
alias vgh='vagrant halt'
alias gtg='git grok'
alias a='atom .'

# Show Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# VS Code
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

# Shell Integration
# source ~/.iterm2_shell_integration.`basename $SHELL`

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
eval $(/usr/libexec/path_helper -s)
