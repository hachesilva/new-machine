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
brew install -q bash
brew install -q zsh

# Install...
    # Oh-My-ZSH!
    . _shared-install-zsh.sh

    # nvm and Node
    . _shared-install-nvm.sh

    # System essentials
    brew install -q git
    brew install -q youtube-dl

    # Internet
    brew install -q --cask dropbox
    brew install -q --cask firefox
    brew install -q --cask google-chrome
    brew install -q --cask jdownloader
    brew install -q --cask qbittorrent
    brew install -q --cask skype
    brew install -q --cask teamviewer

    # Media
    brew install -q --cask vlc
    brew install -q --cask vox
    brew install -q --cask xnviewmp

    # Dev
    brew install -q --cask beyond-compare
    brew install -q composer
    brew install -q --cask cyberduck
    brew install -q --cask dbeaver-community
    brew install -q --cask docker
    brew install -q --cask iterm2
    brew install -q --cask postman
    brew install -q --cask sublime-text
    brew install -q --cask virtualbox
    brew install -q --cask visual-studio-code

    # Utils
    brew install -q --cask alfred
    brew install -q alt-tab
    brew install -q --cask bartender
    brew install -q --cask betterzip
    brew install -q --cask copyq
    brew install -q --cask flux
#    brew install -q --cask hyperswitch # Replaced by alttab
    brew install -q --cask itsycal
#    brew install -q --cask lightshot
    brew install -q --cask spectacle
    brew install -q --cask the-unarchiver
    brew install -q --cask veracrypt
    brew install -q --cask vnc-server
    brew install -q --cask vnc-viewer
    brew install -q --cask raycast
    brew install -q --cask cleanshot

    # Office
    brew install -q --cask libreoffice

    brew tap homebrew/cask-fonts
    brew install -q --cask font-hack
    brew install -q --cask font-meslo-lg-nerd-font


# Set things up...
    # Show hidden files
    defaults write com.apple.finder AppleShowAllFiles YES
    # Show path bar
    defaults write com.apple.finder ShowPathbar -bool true
    # Show status bar
    defaults write com.apple.finder ShowStatusBar -bool true
