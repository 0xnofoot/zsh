export TMP_DIR=~/.tmp
export EDITOR='nvim'
export RUST_BACKTRACE='full'

if [ ! -d "$TMP_DIR" ]; then
    mkdir "$TMP_DIR"
    echo "make ~/.tmp"
fi

export GDK_SCALE=1.5
export QT_QPA_PALTFORM=wayland
export QT_WAYLAND_FORCE_DPI=144
export QT_SCALE_FACTOR=1.5
