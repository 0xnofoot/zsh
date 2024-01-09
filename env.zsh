export TMP_DIR=~/.tmp
export EDITOR='nvim'
export RUST_BACKTRACE='full'

if [ ! -d "$TMP_DIR" ]; then
    mkdir "$TMP_DIR"
    echo "make ~/.tmp"
fi
