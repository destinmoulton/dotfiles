
#
# 04_aliases.zsh
#
# Aliases
#


# Alias bookmarks
alias bkp='cd ~/projects'
alias bkd='cd ~/Downloads'

# Alias xclip so you can do cmd | xclip (ie cat file.txt | xclip)
alias xclip="xclip -selection c"

# Make ls more friendly
alias ls="${aliases[ls]:-ls} -h --group-directories-first"
if [ -x "$(command -v dircolors)" ]; then
    if [[ -s "$HOME/.dir_colors" ]]; then
        eval "$(dircolors --sh "$HOME/.dir_colors")"
    else
        eval "$(dircolors --sh)"
    fi
    alias ls="${aliases[ls]:-ls} --color=auto"
else
    alias ls="${aliases[ls]:-ls} -F"
fi

#
# Most of the rest of the aliases are from prezto
#

# Disable correction.
alias ack='nocorrect ack'
alias cd='nocorrect cd'
alias cp='nocorrect cp'
alias ebuild='nocorrect ebuild'
alias gcc='nocorrect gcc'
alias gist='nocorrect gist'
alias grep='nocorrect grep'
alias heroku='nocorrect heroku'
alias ln='nocorrect ln'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
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

alias l='ls -1A'         # Lists in one column, hidden files.
alias ll='ls -lh'        # Lists human readable sizes.
alias lr='ll -R'         # Lists human readable sizes, recursively.
alias la='ll -A'         # Lists human readable sizes, hidden files.
alias lm='la | "$PAGER"' # Lists human readable sizes, hidden files through pager.
alias lx='ll -XB'        # Lists sorted by extension (GNU only).
alias lk='ll -Sr'        # Lists sorted by size, largest last.
alias lt='ll -tr'        # Lists sorted by date, most recent last.
alias lc='lt -c'         # Lists sorted by date, most recent last, shows change time.
alias lu='lt -u'         # Lists sorted by date, most recent last, shows access time.
alias sl='ls' # I often screw this up.

# Resource Usage
alias df='df -kh'
alias du='du -kh'

# Makes a directory and changes to it.
function mkdcd {
    [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
    builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}
