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
    builtin cd "${argv[-1]}" && ls "${(@)argv[1,-2]}"
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
    ps -eo rss,pid,euser,args:100 --sort %mem | grep -v grep | grep -i "$@" | awk '{printf $1/1024 "MB"; $1=""; print }'
}

# compile zsh and load a new instance
compilezsh()
{
    echo "Running ~/dotfiles/zsh/.zsh/compile.sh...";
    /usr/bin/bash ~/dotfiles/zsh/.zsh/compile.sh;

    echo "Sourcing the new zsh file...";
    source ~/.zsh/.zshrc;
}

# Copy file or directory to system clipboard
# Note: xclip is aliased in 04_aliases.zsh
copy(){
    if ! [ -x "/usr/bin/xclip" ]; then
        echo "error: xclip not installed"
        return 1
    fi

    if [[ $# -eq 0 ]]; then
        # No parameter, so copy the current directory
        pwd | xclip && echo "Current directory name copied to clipboard."

    else

        # Output a message if the file doesn't exist
        [[ -f "$1" ]] || echo "$1 not found."

        # If the file exists, copy the contents
        [[ -f "$1" ]] && xclip "$1" && echo "File $1 contents copied to clipboard."
    fi
}

encrypt(){
    filename="$1"

    if [ -d "$filename" ]; then
        echo "$filename is a directory. Cannot encrypt. Tar it or something."
    fi

    # get the last extension (ie .gz from .tar.gz)
    extension="${filename##*.}"
    newfilename="$filename"
    if ! [ "$extension" = "gpg" ]; then
        newfilename="$filename.gpg"
    fi

    echo "Encrypting $filename to $newfilename"
    
    cmd="gpg --cipher-algo=AES256 --output=$newfilename -c $filename"

    echo "${cmd}"
    if eval "$cmd"; then
      echo "Would you like to remove $filename? (y/n)"
      read -r delete

      if [ "$delete" = "y" ] || [ "$delete" = "Y" ]; then
          echo "Shredding $filename..."
          shred -u "$filename"
      fi
    fi
}

decrypt(){
    filename="$1"

    newfilename="${filename}"
    extension="${filename##*.}"
    if [ "$extension" = "gpg" ]; then
      # strip gpg from filename
      newfilename="${filename%.*}"
    fi
    cmd="gpg --cipher-algo=AES256 --output=$newfilename --decrypt $filename"
    echo "${cmd}"
    if eval "$cmd"; then
      echo "Would you like to remove $filename? (y/n)"
      read -r delete

      if [ "$delete" = "y" ] || [ "$delete" = "Y" ]; then
          echo "Shredding $filename..."
          shred -u "$filename"
      fi
    fi
}

# Run fzf on ripgrep `rg` commands
#  - Lists files at bottom
#  - Shows file preview at top
function frg {
        result=$(rg --ignore-case --color=always --line-number --no-heading "$@" |
        fzf --ansi \
            --color 'hl:-1:underline,hl+:-1:underline:reverse' \
            --delimiter ':' \
            --preview "bat --color=always {1} --theme='Solarized (light)' --highlight-line {2}" \
            --preview-window 'up,60%,border-bottom,+{2}+3/3,~3')
      file=${result%%:*}
      linenumber=$(echo "${result}" | cut -d: -f2)
      if [[ -n "$file" ]]; then
              $EDITOR +"${linenumber}" "$file"
      fi
}
