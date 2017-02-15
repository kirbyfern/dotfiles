# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kirbyjames/.oh-my-zsh
# First Option
# ZSH_THEME="robbyrussell"
ZSH_THEME="kboygwapo"

plugins=(git)

source $ZSH/oh-my-zsh.sh
# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# For a full list of active aliases, run `alias`.
# Clear DNS Cache
alias macx='sudo killall -HUP mDNSResponder'
alias psx='ps aux'
# Laziness to Directories
alias cdk='cd Workspace/KBOY/Personal/'
alias cdks='cd Workspace/KBOY/SpringSemester/CS1/'
alias cdc='cd Workspace/C++'
alias cdj='cd Workspace/Java'
alias cdr='cd Workspace/Ruby'
alias cdp='cd Workspace/Python'
alias cdpr='cd Workspace/Practice'

alias p='python3'

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
