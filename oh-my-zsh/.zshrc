# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kirbyjames/.oh-my-zsh
# First Option
# ZSH_THEME="robbyrussell"
# ZSH_THEME="xiong-chiamiov-plus"
# ZSH_THEME="afowler"
# ZSH_THEME="minimal"
ZSH_THEME="macovsky-ruby"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias macx='sudo killall -HUP mDNSResponder'
alias psx='ps aux'
# Laziness to Directories
alias cdk='cd Workspace/KBOY/Personal/'
alias cdks='cd Workspace/KBOY/SpringSemester/CS1/'
alias cdkp='cd Workspace/KBOY/Projects/'
alias cdko='cd Workspace/KBOY/OpenSource/'
alias cdvs='cd ~/Desktop/vagrant/src/flippy'
alias cdc='cd Workspace/C++'
alias cdj='cd Workspace/Java'
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
# Show Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
