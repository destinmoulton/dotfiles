
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

# Load zplug plugin manager
ZPLUG_HOME=$ZDOTDIR/zplug

# initialize zplug
source $ZPLUG_HOME/init.zsh

# Extra zsh completions
#    - Extra configuration in: 10_completions.zsh
zplug "zsh-users/zsh-completions", defer:2

# Autosuggestions automatically shows suggested commands from history
#    - Ctrl + Space is the completion command (defined in keybindings)
zplug "zsh-users/zsh-autosuggestions", defer:2

# Set the color of the autosuggest results
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'


# Syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# zsh-autocomplete for real time type ahead autocompletion
# https://github.com/marlonrichert/zsh-autocomplete
zplug "marlonrichert/zsh-autocomplete", defer:2

# zsh-async is requirement for the pure theme (20_theme.zsh)
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"

# Let zplug manage itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# source plugins and add commands to the PATH
zplug load

# **** IMPORTANT ****
# Run `zplug install` after adding a zplug plugin above
