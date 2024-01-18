# ------------------
# zsh prompt config
# ------------------

setopt nopromptbang prompt{cr,percent,sp,subst}

# git-info
zstyle ':zim:git-info:branch' format '%F{blue} %F{magenta}%b'

zstyle ':zim:git-info:keys' format \
    'prompt'  '$fg_bold[red] %F{green}(%b%F{green})' \

autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info

autoload -U colors

PS1=' %1~$reset_color%b${(e)git_info[prompt]}%F{red}  '

