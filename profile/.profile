# Add to the PATH

#export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass

if [ "$0" = "/etc/lxdm/Xsession" -a "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
fi

# Add my scripts
PATH="/usr/local/bin:/usr/bin:/bin"
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/bin

# Add snap
PATH=$PATH:/var/lib/snapd/snap/bin

# Add android studio path
export ANDROID_HOME=$HOME/Android/Sdk
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
