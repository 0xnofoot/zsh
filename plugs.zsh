export ZIM_HOME=~/.config/zsh/zim

# proxy for install zimfw
# HTTP_PROXY=http://127.0.0.0:7890

if [[ ! -d $ZIM_HOME ]]; then
    mkdir ~/.config/zsh/zim
    # curl --proxy $HTTP_PROXY -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    rm ~/.zimrc
    ln -s ~/.config/zsh/zimrc ~/.zimrc
    zimfw install
fi
