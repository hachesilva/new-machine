#!/bin/bash

# Install...
    # Oh-My-ZSH!
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # zsh themes
    mkdir -p ~/.oh-my-zsh/custom/themes
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

    # zsh plugins
    mkdir -p ~/.oh-my-zsh/custom/plugins
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
    git clone https://github.com/zpm-zsh/undollar ~/.oh-my-zsh/custom/plugins/undollar
    git clone https://github.com/zpm-zsh/ls.git ~/.oh-my-zsh/custom/plugins/ls
    git clone https://github.com/zpm-zsh/material-colors ~/.oh-my-zsh/custom/plugins/material-colors
    git clone https://github.com/zpm-zsh/dircolors-neutral ~/.oh-my-zsh/custom/plugins/dircolors-neutral
    git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
