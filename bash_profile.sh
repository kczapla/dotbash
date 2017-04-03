# Editor
MACOS_NVIM_PATH="/opt/local/bin/nvim"
CURRENT_EDITOR_PATH=""
if [[ -f $MACOS_NVIM_PATH ]]; then
    CURRENT_EDITOR_PATH=$MACOS_NVIM_PATH
    alias nv=$MACOS_NVIM_PATH
else
    echo "NeoVim not found. Using ordinary Vim."
    CURRENT_EDITOR_PATH=vim
    alias nv=vim
fi

FCEDIT=$CURRENT_EDITOR_PATH
# Disable log off -> ctrl-d
set -o ignoreeof
# Indicate an error when trying to use undefined variable
set -o nounset
# cdable vars 
shopt -s cdable_vars
