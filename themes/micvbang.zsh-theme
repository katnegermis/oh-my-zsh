local ret_status="%(?:%{$fg_bold[green]%}~ :%{$fg_bold[red]%}~ %s)"

PROMPT='%n $(virtualenv_prompt_info)$(tf_prompt_info)$(git_prompt_info)${ret_status}%{$reset_color%}'

# show time in right side
RPROMPT='%*'

ZSH_THEME_TF_PROMPT_PREFIX="%{$fg_bold[blue]%}tf:(%{$fg[red]%}"
ZSH_THEME_TF_PROMPT_SUFFIX="%{$fg[blue]%})%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%})%{$reset_color%} "

ZSH_THEME_VIRTUALENV_PREFIX="%{$fg_bold[blue]%}venv:(%{$fg[red]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$fg[blue]%})%{$reset_color%} "
