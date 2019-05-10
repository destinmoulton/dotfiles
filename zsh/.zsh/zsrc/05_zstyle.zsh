
#
# 05_zstyles.zsh
#
# zstyle configuration
#

# Set the completion to match insensitive (ie cd documents will match Documents)
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completi

