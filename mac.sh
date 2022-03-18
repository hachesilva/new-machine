#!/bin/bash

currentuser=$USER

# Import utils
. utils/colors.sh

# Update OS
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$currentuser/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update bash, install zsh
brew install bash
brew install zsh

# Install...
    # Oh-My-ZSH!
    . _shared-install-zsh.sh

    # nvm and Node
    . _shared-install-nvm.sh

    # System essentials
    brew install git
    brew install youtube-dl

    # Internet
    brew install --cask dropbox
    brew install --cask firefox
    brew install --cask google-chrome
    brew install --cask jdownloader
    brew install --cask qbittorrent
    brew install --cask skype
    brew install --cask teamviewer

    # Media
    brew install --cask vlc
    brew install --cask vox
    brew install --cask xnviewmp

    # Dev
    brew install --cask beyond-compare
    brew install composer
    brew install --cask cyberduck
    brew install --cask dbeaver-community
    brew install --cask docker
    brew install --cask iterm2
    brew install --cask postman
    brew install --cask sublime-text
    brew install --cask virtualbox
    brew install --cask visual-studio-code

    # Utils
    brew install --cask alfred
    brew install alt-tab
    brew install --cask bartender
    brew install --cask betterzip
    brew install --cask copyq
    brew install --cask flux
#    brew install --cask hyperswitch # Replaced by alttab
    brew install --cask itsycal
#    brew install --cask lightshot
    brew install --cask spectacle
    brew install --cask the-unarchiver
    brew install --cask veracrypt
    brew install --cask vnc-server
    brew install --cask vnc-viewer

    # Office
    brew install --cask libreoffice

    brew tap homebrew/cask-fonts
    brew install --cask font-hack

# Set things up...
    # Show hidden files
    defaults write com.apple.finder AppleShowAllFiles YES
    # Show path bar
    defaults write com.apple.finder ShowPathbar -bool true
    # Show status bar
    defaults write com.apple.finder ShowStatusBar -bool true
