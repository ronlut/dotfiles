#!/bin/bash

# sources: 
# 1. https://github.com/mathiasbynens/dotfiles/blob/main/.macos
# 2. https://github.com/twpayne/dotfiles/blob/master/home/.chezmoiscripts/darwin/run_onchange_after_configure-defaults.sh
# 3. https://macos-defaults.com/
# 4. https://notrab.dev/posts/friendly-mac-os-defaults/
# 5. https://mynixos.com/nix-darwin/options/system.defaults

set -eufo pipefail

defaults write -g AppleEnableSwipeNavigateWithScrolls -bool false
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g AppleShowAllExtensions -bool false
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 2
defaults write -g NSAutomaticCapitalizationEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticInlinePredictionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticTextCorrectionEnabled -bool false
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false
defaults write -g NSUserDictionaryReplacementItems '()'
defaults write -g WebAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false

defaults write -g com.apple.trackpad.forceClick -bool false

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string bottom
defaults write com.apple.dock "show-recents" -bool false
defaults write com.apple.dock showDesktopGestureEnabled -int 0
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0
defaults write com.apple.dock showMissionControlGestureEnabled -int 0

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

sudo nvram StartupMute=%01
