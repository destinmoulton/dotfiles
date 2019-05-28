#!/bin/zsh
#
#
# Generate the .zsh/.zshrc file
# from the .zsh/source/*.zsh files 
#


ZDOTDIR=$HOME/.zsh

SRC_DIR=$ZDOTDIR/source

ZSH_INIT_FILE=$ZDOTDIR/.zshrc

SRC_FILES=$()

touch $ZSH_INIT_FILE
chmod 700 $ZSH_INIT_FILE

echo -e "#\n#\n#\n#   Compiled on:" `date` > $ZSH_INIT_FILE
find $SRC_DIR -iname '*.zsh' | sort | xargs cat >> $ZSH_INIT_FILE

chmod 555 $ZSH_INIT_FILE

