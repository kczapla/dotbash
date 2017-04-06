# Editor
MACOS_NVIM_PATH="/opt/local/bin/nvim"
CURRENT_EDITOR_PATH=""
if [[ -f $MACOS_NVIM_PATH ]]; then
    CURRENT_EDITOR_PATH=$MACOS_NVIM_PATH
else
    echo "NeoVim not found. Using ordinary Vim."
    CURRENT_EDITOR_PATH=vim
fi
export EDITOR=$CURRENT_EDITOR_PATH
alias nv=$CURRENT_EDITOR_PATH

FCEDIT=$CURRENT_EDITOR_PATH
# Disable log off -> ctrl-d
set -o ignoreeof
# Indicate an error when trying to use undefined variable
set -o nounset
# cdable vars 
shopt -s cdable_vars

# Midnigth Commander
alias mc='LANG=en_EN.UTF-8 mc'
