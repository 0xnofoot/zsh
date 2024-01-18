setopt nopromptbang prompt{cr,percent,sp,subst}

#
# git-info
#
zstyle ':zim:git-info:branch' format '%F{blue} %F{magenta}%b'

zstyle ':zim:git-info:keys' format \
    'prompt'  '$fg_bold[red] %F{green}(%b%F{green})' \
    # 'rprompt' '[%R]'

autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info

#
#prompt-pwd
#
# zstyle ':zim:prompt-pwd' git-root yes
# zstyle ':zim:prompt-pwd:tail' length 1
# zstyle ':zim:prompt-pwd:fish-style' dir-length 1

# set finally prompt
# dont set right prompt, you can find the configuration in github with these plugs
autoload -U colors

PS1=' %1~$reset_color%b${(e)git_info[prompt]}%F{red}  '

