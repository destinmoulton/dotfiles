# Add to the PATH

#export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass

if [ "$0" = "/etc/lxdm/Xsession" -a "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
fi

# Setup default XDG variables
# These will be used later in this for exports
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state

# Add my scripts
PATH="/usr/local/bin:/usr/bin:/bin"
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/bin

# Add snap
PATH=$PATH:/var/lib/snapd/snap/bin

# Add android studio path
export ANDROID_USER_HOME=$XDG_DATA_HOME/android
export ANDROID_HOME=$ANDROID_USER_HOME/sdk
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
PATH=$PATH:$ANDROID_HOME/emulator
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/platform-tools

# Add go (golang) path
export GOPATH=$HOME/.local/go
export GOBIN=$GOPATH/bin
PATH=$PATH:$GOBIN

# Add java path (other java settings defined in /etc/profile.d/custom.sh)
#PATH=$PATH:$JAVA_HOME

# Add npm global path
PATH=$PATH:$HOME/.npm/global-packages/bin

# Add the rust cargo bin path

# cargo home
export CARGO_HOME=$XDG_DATA_HOME/cargo
PATH=$PATH:$CARGO_HOME/bin

# Composer 
PATH=$PATH:$HOME/.config/composer/vendor/bin

# Set wine to use win32
export WINEARCH=win64
export WINEPREFIX=~/.wine winecfg

# EXPORT THE PATH
export PATH

# EXPORT the editor
export EDITOR=vim


# Fix java fonts and set to gtk theme
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.opengl=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel "

# Set the fzf default to fd (better than find)
export FZF_DEFAULT_COMMAND="fd --type f -E node_modules"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d -E node_modules"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#d0d0d0,bg:#121212,hl:#5f87af
 --color=fg+:#ffffff,bg+:#4f4f4f,hl+:#5fd7ff
 --color=info:#afaf87,prompt:#6ba6ff,pointer:#ffcb5c
 --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'

# Set the bat (cat replacement) default theme
export BAT_THEME="Solarized (light)"

# Set the QT theme (configured via qt5ct app)
export QT_QPA_PLATFORMTHEME=qt5ct

# Set Firefox to disable the RDD SANDBOX
export MOZ_DISABLE_RDD_SANDBOX=1

# calc_history
export CALCHISTFILE=$XDG_CACHE_HOME/calc_history

# nvidia cuda cache path
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv

# rustup
export RUSTUP_HOME=$XDG_DATA_HOME/rustup

# sqlite history
export SQLITE_HISTORY=$XDG_CACHE_HOME/sqlite_history

# Added by Toolbox App
export PATH="$PATH:/home/destin/.local/share/JetBrains/Toolbox/scripts"
