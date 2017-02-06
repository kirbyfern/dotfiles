# @kboygits’s Sexy zshrc theme
# Personal Zsh Terminal Flavor

local ret_status="%(?:%{$fg_bold[yellow]%}⚡️ 💥 ⚡️ 💥 :%{$fg_bold[red]%}⛩ 🔥 ⛩ 🔥 %{$fg_bold[red]%}✗ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}Branch 🚀 🚀:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[yellow]%}🚀 🚀 "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
