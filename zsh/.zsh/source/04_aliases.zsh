
#
# 04_aliases.zsh
#
# Aliases
#



# Alias xclip so you can do cmd | xclip (ie cat file.txt | xclip)
alias xclip="xclip -selection c"


# Make ls more friendly
# 
# REPLACED BY exa command (alias in this file)
#
# alias ls="${aliases[ls]:-ls} -h --group-directories-first"
# if [ -x "$(command -v dircolors)" ]; then
#     if [[ -s "$HOME/.dir_colors" ]]; then
#         eval "$(dircolors --sh "$HOME/.dir_colors")"
#     else
#         eval "$(dircolors --sh)"
#     fi
#     alias ls="${aliases[ls]:-ls} --color=auto"
# else
#     alias ls="${aliases[ls]:-ls} -F"
# fi

#
# Most of the rest of the aliases are from prezto
#

# Disable correction.
alias ack='nocorrect ack'
alias cd='nocorrect cd'
alias cp='nocorrect cp'
alias grep='nocorrect grep'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias rm='nocorrect rm'

# Disable globbing.
alias bower='noglob bower'
alias fc='noglob fc'
alias find='noglob find'
alias ftp='noglob ftp'
alias history='noglob history'
alias locate='noglob locate'
alias rake='noglob rake'
alias rsync='noglob rsync'
alias scp='noglob scp'
alias sftp='noglob sftp'

# Define general aliases.
alias _='sudo'

alias mkdir="${aliases[mkdir]:-mkdir} -p"

# exa
# Replace ls with exa
if ! [ -x "$(command -v exa)" ]; then
  echo 'Warning: exa is not installed. exa is the ls replacement.' >&2
else
  # Define the exa command (ls replacement)
  #  --group shows the user group
  EXA_COMMAND="exa --long --group --group-directories-first"
  alias exa="$EXA_COMMAND"
  alias ls="$EXA_COMMAND"
fi

# bat
# bat is a cat replacement
if ! [ -x "$(command -v bat)" ]; then
  echo 'Warning: bat is not installed. bat is the cat replacement.' >&2
else
  alias bat="bat --theme='OneHalfLight'"
fi

# Resource Usage
alias df='df -kh'
alias du='du -kh'


