export TMP_DIR=~/.tmp
export EDITOR='nvim'
export RUST_BACKTRACE='full'

if [ ! -d "$TMP_DIR" ]; then
    mkdir "$TMP_DIR"
    echo "make ~/.tmp"
fi

# for xcodebuild
export TOOLCHAIN_PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain

