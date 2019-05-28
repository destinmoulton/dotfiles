
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


# Load theme
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

