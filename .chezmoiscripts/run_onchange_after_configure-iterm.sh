#!/bin/bash

# sources: 
# 1. https://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/
# 2. https://github.com/renemarc/dotfiles/blob/master/dot_config/iterm/README.md

set -eufo pipefail

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "/Users/rony/.config/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true


