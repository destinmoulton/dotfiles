
# 02_plugins.zsh
# 
# Plugins configuration
#
# uses znap for plugins
# Load fzf for:
#   - Kill process list completion
#   - History searching (Ctrl+r)
#   - File searching (Ctrl+t)
if [ -f /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
else
    echo ".zshrc :: 02_plugins.zsh :: Unable to find fzf...\n"
fi


# zap plugin manager
# https://github.com/zap-zsh/zap
ZAPDIR=$ZDOTDIR/zap

# use git prefix for zap
export ZAP_GIT_PREFIX="git@github.com:"

# start zap
# IF YOU ARE REINSTALLING ZAP - make sure it puts it in the right location
# !!! IMPORTANT: the zap installer puts it in
# .local/share/zap - but you can move it
source $ZAPDIR/zap.zsh

# Autosuggestions automatically shows suggested commands from history
#    - Ctrl + Space is the completion command (defined in keybindings)
plug "zsh-users/zsh-autosuggestions"

# Set the color of the autosuggest results
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# Syntax highlighting
plug "zsh-users/zsh-syntax-highlighting"

# zsh-autocomplete for real time type ahead autocompletion
# https://github.com/marlonrichert/zsh-autocomplete
# NOTE: zsh-complete plugin interferes with this plugin!
plug "marlonrichert/zsh-autocomplete"

