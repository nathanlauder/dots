PROMPT='%{$fg_bold[#5bfbc2]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT+="%(?:%{$fg_bold[#5bfbc2]%}➜ :%{$fg_bold[red]%}➜ )"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}🌴 %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} %{$fg[red]%}✏️ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}"
