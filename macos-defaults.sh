# Ask for the administrator password upfront
sudo -v

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

###############################################################################
# Dock                                                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

###############################################################################
# Calendar                                                                    #
###############################################################################

# Week starts on monday
defaults write com.apple.iCal "first day of week" -int 1