#
# 07_zoxide.zsh
#
# Define some custom functions.
# These are directly accessible on the cli.
# 
# 
#

# Makes a directory and changes to it.
function mkdcd {
    [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
    builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Show some basic commands as reminders
function sos {
    echo "bat - cat replacement"
    echo "fd - find replacment"
    echo "dust - disk usage with bar graphs"
    echo "tldr - show basic command info"
    echo "rg - grep replacent"
    echo "z - change directories with history"
}



