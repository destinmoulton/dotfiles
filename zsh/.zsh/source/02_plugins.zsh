
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
zplug "zsh-users/zsh-completions"

# Autosuggestions automatically shows suggested commands from history
#    - Ctrl + Space is the completion command (defined in keybindings)
zplug "zsh-users/zsh-autosuggestions"

# Set the color of the autosuggest results
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'


# Syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting"

# FZF Marks
# Bookmark manager using fzf
# Commands:
#    mark <mark>, to register a new mark to the current dir
#    fzm <optional-initial-query> to jump to or delete a mark using fzf
#    ctrl+y, to jump to a match
#    ctrl+t, to toggle a match for deletion
#    ctrl+d, to delete the selected matches
#    ctrl+g, Keybinding to open fzm
zplug "urbainvaes/fzf-marks"
FZF_MARKS_FILE=$ZDOTDIR/.fzf-marks

# zsh-autocomplete for real time type ahead autocompletion
# https://github.com/marlonrichert/zsh-autocomplete
zplug "marlonrichert/zsh-autocomplete"

# zsh-async is requirement for the pure theme (20_theme.zsh)
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"

# Let zplug manage itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load
