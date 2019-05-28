
#
# 01_paths.zsh
# 
# Define the variables for usage and export.
#  - PATH
#  - Go exports
#  - Paths and Vars for ZSH configuration
#


unset SSH_ASKPASS

# Add my scripts
PATH="/home/destin/.local/bin:/usr/local/bin:/usr/bin:/bin"
PATH=$PATH:~/scripts/

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

