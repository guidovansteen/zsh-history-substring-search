#!/usr/bin/env zsh
#
# People who want to use to an older version of zsh-syntax-highlighting
# may want to use this script in order to make it work with newer versions of
# history-substring-search
#
# Source this script with "$ source ./use_old_version_of_zsh_syntax_highlighting.zsh"
#
# Do so:
# * after sourcing zsh-syntax-highlighting.zsh
# * before sourcing history-substring-search.zsh
#

# If _zsh_highlight-zle-buffer() exists the old version of has been loaded.

if [[ $#functions[_zsh_highlight-zle-buffer] -gt 0 && $#functions[_zsh_highlight] -eq 0 ]] ; then

  # make _zsh_highlight() callable as _zsh_highlight()
  function _zsh_highlight() {
    _zsh_highlight-zle-buffer
  }
fi

