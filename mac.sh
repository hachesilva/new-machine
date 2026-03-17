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
    brew install -q fd # better find
    brew install -q git
    brew install -q lsd # better ls
    brew install -q mas
    brew install -q organize-tool # rules-based file manager
    brew install -q tldr # better man
    brew install -q yank # text extraction from CLI output
    brew install -q yazi # CLI file manager
    brew install -q yt-dlp


    # Internet
    brew install -q --cask dropbox
    brew install -q --cask firefox
    brew install -q --cask google-chrome
    brew install -q --cask jdownloader
    brew install -q --cask qbittorrent
    brew install -q --cask teamviewer

    # Media
    brew install -q --cask calibre
    brew install -q --cask foobar2000
    brew install -q --cask handbrake-app
    brew install -q --cask imageoptim
    brew install -q --cask petrichor # music player
    brew install -q --cask vlc
    brew install -q --cask vox # music player
    brew install -q --cask xnviewmp # image viewer and manager

    # Dev
    brew install -q --cask beyond-compare
    brew install -q composer
    brew install -q --cask cyberduck
    brew install -q --cask dbeaver-community
    brew install -q --cask devtoys
    brew install -q --cask docker
    brew install -q --cask iterm2
    brew install -q --cask postman
    brew install -q --cask responsively
    brew install -q --cask sublime-text
    brew install -q --cask virtualbox
    brew install -q --cask visual-studio-code

    # Utils
    brew install -q --cask aldente # battery manager
    brew install -q --cask alt-tab
    brew install -q --cask betterzip
    brew install -q --cask commander-one # file manager
    brew install -q --cask copyq
    brew install -q --cask dropzone
    brew install -q --cask espanso
    brew install -q --cask finicky # default browser manager
    brew install -q --cask flux-app
    brew install -q --cask handy # speech to text
    brew install -q --cask hyperkey
    brew install -q --cask itsycal
    brew install -q --cask jordanbaird-ice # alt to bartender
    brew install -q --cask keka # zip archiver
    brew install -q --cask linearmouse # better mouse settings
    brew install -q --cask localsend
    brew install -q --cask maccy # alt to copyq
    brew install -q --cask marta # file manager
    brew install -q --cask notunes # block itunes from opening
    brew install -q --cask pika # color picker
    brew install -q --cask raycast
    brew install -q --cask rectangle
    brew install -q --cask shottr
    brew install -q --cask spaceid # virtual desktops indicator
    brew install -q --cask veracrypt
    brew install -q --cask vnc-server
    brew install -q --cask vnc-viewer

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

# Install apps from the app store
mas install 1355679052 # Dropover
mas install 68053424 # Gapplin svg viewer
mas install 768053424 # Gapplin svg viewer
mas install 1503970375 # Invoice Ninja
mas install 694633015 # VPN Unlimited
