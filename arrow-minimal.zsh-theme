# TODO:
# [ ] add root to prompts
# [ ] add shh to prompts

eval red=$fg[red]
eval green=$fg[green]
eval yellow=$fg[yellow]
eval blue=$fg[blue]
eval magenta=$fg[magenta]
eval cyan=$fg[cyan]
eval white=$fg[white]
eval grey=$fg[grey]

local _current_dir="%{$green%}%c%{$reset_color%} "
local _return_status="%(?:%{$green%}→:%{$red%}→)%{$reset_color%}"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$bg[black]%}%{$white%}[%{$yellow%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$white%}]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$blue%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$red%}𐄂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$green%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" %{$red%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" %{$green%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE=" %{$yellow%}↔%{$reset_color%}"


# vim-mode indicator
MODE_INDICATOR="%{$red%}❮❮❮%{$reset_color%}"

PROMPT='${_return_status} ${_current_dir}'
RPROMPT='$(vi_mode_prompt_info) $(git_remote_status) $(git_prompt_short_sha) $(git_prompt_info)'

# vim: ft=zsh
