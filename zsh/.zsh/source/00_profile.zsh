# 00_profile.zsh
#
# Run source on ~/.profile if it isn't loaded
#
#INCLUDE THE FOLLOWING TWO LINES IN .profile
# [[ "${_PROFILE_LIBSCRIPT:-""}" == "yes" ]] && return 0
# _PROFILE_LIBSCRIPT=yes

# Using those two lines will insure that the .profile isn't loaded multiple times
source $HOME/.profile

