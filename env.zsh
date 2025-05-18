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

# for homebrew
export PATH=$PATH:/opt/homebrew/bin

# for trash-cli
export PATH=$PATH:/opt/homebrew/opt/trash-cli/bin

# for mason
export PATH=$PATH:$HOME/.local/share/nvim/mason/bin

# for flutter with fvm
export PATH=$PATH:$HOME/fvm/default/bin
export PATH=$PATH:$HOME/.pub-cache/bin

# for Java
export JAVA_HOME="$HOME/.local/share/jdk-21.0.2.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

# for Android
export ANDROID_HOME=$HOME/.local/share/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

# for Golang with gvm
[[ -s "/Users/nofoot/.gvm/scripts/gvm" ]] && source "/Users/nofoot/.gvm/scripts/gvm"
