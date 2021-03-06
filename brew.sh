#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

brew tap homebrew/bundle
brew tap homebrew/cask
brew tap warrensbox/tap

brew install go
brew install detox
brew install fzf
brew install gh
brew install git
brew install git-crypt
brew install graphviz
brew install htop
brew install hugo
brew install jq
brew install protobuf
brew install warrensbox/tap/tfswitch
brew install terraform-docs
brew install the_silver_searcher
brew install tree
brew install youtube-dl
brew install wifi-password
brew install k9s
brew install neovim
brew install mas
brew install httpie
brew install speedtest-cli
brew install terminal-notifier
brew install golang-migrate
brew install nmap
brew install exa

brew install --cask google-chrome
brew install --cask spotify
brew install --cask iterm2
brew install --cask slack
brew install --cask 1password
brew install --cask postman
brew install --cask zoom
brew install --cask virtualbox
brew install --cask rectangle
brew install --cask vlc
brew install --cask tunnelblick
brew install --cask ngrok
brew install --cask sequel-pro
brew install --cask visual-studio-code
brew install --cask eul

brew cleanup