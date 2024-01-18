# ------------------
# zsh vi-mode config
# ------------------

bindkey -v

bindkey -M vicmd "H" remap_vi_H
bindkey -M vicmd "L" remap_vi_L
bindkey -M vicmd "W" remap_vi_W
bindkey -M vicmd "E" remap_vi_E
bindkey -M vicmd "B" remap_vi_B
bindkey -M vicmd "," vi-beginning-of-line
bindkey -M vicmd "." vi-end-of-line
bindkey -M vicmd "'" vi-match-bracket

remap_vi_H() {
    for i in {1..3}
    do
        zle vi-backward-char
    done
}
zle -N remap_vi_H

remap_vi_L() {
    for i in {1..3}
    do
        zle vi-forward-char
    done
}
zle -N remap_vi_L

remap_vi_W() {
    for i in {1..3}
    do
        zle vi-forward-blank-word
    done
}
zle -N remap_vi_W

remap_vi_E() {
    for i in {1..3}
    do
        zle vi-forward-blank-word-end
    done
}
zle -N remap_vi_E

remap_vi_B() {
    for i in {1..3}
    do
        zle vi-backward-blank-word
    done
}
zle -N remap_vi_B

# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
    for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
        bindkey -M $m $c select-bracketed
    done
done

function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

_fix_cursor() {
    echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

KEYTIMEOUT=1
