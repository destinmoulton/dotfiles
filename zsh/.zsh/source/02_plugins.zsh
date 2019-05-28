
#
# 02_plugins.zsh
# 
# Plugins configuration
# Uses antigen to import the plugins
#

# Load fzf for:
#   - Kill process list completion
#   - History searching (Ctrl+r)
#   - File searching (Ctrl+t)
if [ -f /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
else
    echo ".zshrc :: 02_plugins.zsh :: Unable to find fzf...\n"
fi

# Load antigen
ADOTDIR=$ZDOTDIR/antigen
ANTIGEN_LOG=$ADOTDIR/antigen.log
source $ADOTDIR/antigen.zsh


# Extra zsh completions
#    - Extra configuration in: 10_completions.zsh
antigen bundle zsh-users/zsh-completions


# Autosuggestions automatically shows suggested commands from history
#    - Ctrl + Space is the completion command (defined in keybindings)
antigen bundle zsh-users/zsh-autosuggestions
# Set the color of the autosuggest results
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'


# Syntax highlighting
antigen bundle zdharma/fast-syntax-highlighting 


# Solarized man pages
antigen bundle zlsun/solarized-man

antigen bundle changyuheng/zsh-interactive-cd

# FZF Marks
# Bookmark manager using fzf
# Commands:
#    mark <mark>, to register a new mark to the current dir
#    fzm <optional-initial-query> to jump to or delete a mark using fzf
#    ctrl+y, to jump to a match
#    ctrl+t, to toggle a match for deletion
#    ctrl+d, to delete the selected matches
#    ctrl+g, Keybinding to open fzm
antigen bundle urbainvaes/fzf-marks
FZF_MARKS_FILE=$ZDOTDIR/.fzf-marks

# Load theme
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

