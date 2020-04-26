# ------------------------------------
# Sourcing Bash & ZSH & NVM
# ------------------------------------
source /home/superkirby/.bash_profile
# Path to your oh-my-zsh installation.
export ZSH="/home/superkirby/.oh-my-zsh"
export TERM="xterm-256color"
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/templates/zshrc.zsh-template
source ~/.nvm/nvm.sh

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path
export PATH=~/.local/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="~/.nvm"
plugins=(git)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

#### COPY BELOW TO OVERRIDE "robbyrussel"
#### START THEME CONFIG
### Snippet Will show the user on the terminal ###
# %{$FG[014]%}%n%{$reset_color%} \

_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

PROMPT='[%{$FG[014]%}$(_collapsed_wd)%{$reset_color%}] \
$(git_prompt_info)\
%{$fg[white]%}$PROMPT_SYMBOL '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[011]%}(%{$FG[011]%}git) %{$FG[002]%}➜ %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
#### END THEME CONFIG

### FUNCTION for `cd ..` to the root of the project
### type rcd in the command line when inside an npm project
function rcd {
   cd $(npm root) &&
   cd ..
}
## END FUNCTION

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias sdu='sudo apt-get update'
alias sdut='sudo apt-get upgrade && sudo apt-get dist-upgrade'
alias sdc='sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove && sudo service dns-clean'
alias pgl='ping google.com'
alias psx='ps aux'
alias cl='clear'
alias p='python3'
alias rbm='ruby -r minitest/pride'
alias rb='ruby'
alias vzs='vim .zshrc'
alias vgu='vagrant up'
alias vgs='vagrant ssh'
alias vgh='vagrant halt'
alias gtg='git grok'
alias glog='git log --graph --full-history --all --oneline --color --decorate --date-order'
alias grs='git remote show origin'
alias pgb='php ./bin/console'
alias cdk='cd /home/superkirby/Kirby'
alias ]='xdg-open'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# -------
# Docker
# -------
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
alias drun='docker run --rm -it -v "${PWD}":/app'
# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"
alias dc="docker-compose"
alias dpsql="docker-compose exec postgres psql"
# Stop all containers
dstop() { docker stop $(docker ps -a -q); }
# Remove all containers
drm() { docker rm $(docker ps -a -q); }
# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
# Remove all images
dri() { docker rmi $(docker images -q); }
alias dew="docker-compose exec web"

# -----------
# Kubernetes
# -----------
alias k='kubectl'
alias kg='kubectl get'
alias kgpn='kubectl get pods -n'

# -----------
# Jekyll
# -----------
alias jek="bundle exec jekyll serve --config _config.yml,_config.dev.yml --drafts --livereload"

# -----------
# Show Tree
# -----------
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
