# Add to the PATH

#export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass

if [ "$0" = "/etc/lxdm/Xsession" -a "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
fi

# Add my scripts
PATH="/usr/local/bin:/usr/bin:/bin"
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/bin

# Add android studio path
export ANDROID_HOME=$HOME/Android/Sdk
PATH=$PATH:$ANDROID_HOME/emulator
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/platform-tools

# Add go (golang) path
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
PATH=$PATH:$GOROOT/bin:$GOBIN

# Setup the node 'n' command to use the home dir
# for storing node versions
export N_PREFIX=$HOME/.n
PATH=$PATH:$N_PREFIX/bin

# Add java path (other java settings defined in /etc/profile.d/custom.sh)
PATH=$PATH:$JAVA_HOME

# Add npm global path
PATH=$PATH:$HOME/.npm/global-packages/bin

# Composer 
PATH=$PATH:$HOME/.config/composer/vendor/bin

# Set wine to use win32
export WINEARCH=win32

# EXPORT THE PATH
export PATH

# EXPORT the editor
export EDITOR=vim


# Fix java fonts and set to gtk theme
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.opengl=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel "

# Set the fzf default to fd (better than find)
export FZF_DEFAULT_COMMAND="fd --type f -E node_modules"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d -E node_modules"

