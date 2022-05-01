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


# get the memory useage for a process
# https://stackoverflow.com/questions/3853655/in-linux-how-to-tell-how-much-memory-processes-are-using
mem()
{                                                                                                      
    ps -eo rss,pid,euser,args:100 --sort %mem | grep -v grep | grep -i $@ | awk '{printf $1/1024 "MB"; $1=""; print }'
}



