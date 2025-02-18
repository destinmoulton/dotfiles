#
#
# .zshrc
#
#
# Source the custom zsh configuation in source

DESTIN_ZSH_PATH=/home/destin/.zsh

# source all the zsh files
for file in $DESTIN_ZSH_PATH/source/*.zsh; do
    source "$file"
done
