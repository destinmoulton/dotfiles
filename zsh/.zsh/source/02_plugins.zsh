#
# 02_plugins.zsh
# 
# Plugins configuration
# Uses zplug to import the plugins
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


# znap plugin manager
# Download Znap, if it's not there yet.
ZNAPDIR=$ZDOTDIR/znap
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $ZNAPDIR
source $ZNAPDIR/znap.zsh  # Start Znap

# initialize znap
source $ZNAPDIR/znap.zsh

znap prompt sindresorhus/pure

# Extra zsh completions
#    - Extra configuration in: 10_completions.zsh
znap source zsh-users/zsh-completions

# Autosuggestions automatically shows suggested commands from history
#    - Ctrl + Space is the completion command (defined in keybindings)
znap source zsh-users/zsh-autosuggestions

# Set the color of the autosuggest results
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# Syntax highlighting
znap source zsh-users/zsh-syntax-highlighting

# zsh-autocomplete for real time type ahead autocompletion
# https://github.com/marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-autocomplete

# zsh-async is requirement for the pure theme (20_theme.zsh)
#znap source mafredri/zsh-async

