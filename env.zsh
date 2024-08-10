# ------------------
# Default Config
# ------------------

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# ------------------
# Private Config
# ------------------

export TMP_DIR=~/.tmp

if [ ! -d "$TMP_DIR" ]; then
    mkdir "$TMP_DIR"
    echo "make ~/.tmp"
fi

export EDITOR='nvim'

# for mason
# export PATH=$PATH:~/.local/share/nvim/mason/bin
export PATH=$PATH:$HOME/.local/share/nvim/mason/bin

# for xcodebuild
export TOOLCHAIN_PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain

# for ruby
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.3

# for flutter
export PATH=$PATH:$HOME/.local/development/flutter/bin

