#!/bin/bash

# Import utils
. utils/colors.sh

# Update OS
sudo apt-get update

# Install...
    # Oh-My-ZSH!
    . _shared-install-zsh.sh

    # nvm and Node
    . _shared-install-nvm.sh

    # CLI essentials
    sudo apt-get install bat -y
    sudo apt-get install httpie -y
    sudo apt-get install git -y
    sudo apt-get install sshfs -y
    sudo apt-get install xclip -y
    sudo apt-get install zsh -y

    # youtube-dl
    sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
    sudo chmod a+rx /usr/local/bin/youtube-dl
    sudo apt-get install ffmpeg -y
