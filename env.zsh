# ------------------
# Default Config
# ------------------

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]/}

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
export PATH=$PATH:$HOME/.local/share/nvim/mason/bin

# for ruby
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
chruby ruby-2.6.10
# chruby ruby-3.3.3

# # for flutter
export PATH=$PATH:$HOME/fvm/default/bin
export PATH=$PATH:$HOME/.pub-cache/bin
export PUB_HOSTED_URL="https://pub.futuoa.com"

# for rust
export PATH=$PATH:$HOME/.cargo/bin

# for java and android
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$HOME/Library/Android/sdk/cmdline-tools/latest/bin
