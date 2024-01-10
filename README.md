the zsh config for MacOS

clone it to ~/.config

make a link:
ln -s ~/.config/zsh/zshrc ~/.zshrc
ln -s ~/.config/zsh/zimrc ~/.zimrc

you maybe crash your shell, because the network, you can't install the zimfw,
and then the zsh can not run well, and it will break, make sure you can connect github well.

the env.zsh is for your environment config:
if you don't development IOS App with swift, you can delete the TOOLCHAIN_PATH environment variable.

install fzf and these for preview file:
install fzf
install exa
install bat
install exiftool
