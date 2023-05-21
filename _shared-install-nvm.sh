#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16
nvm install 18
nvm install --lts
nvm use --lts

# Install...
    # CLI Essentials
    npm install -g http-server
    npm install -g live-server
    npm install -g servor
    npm install -g sass
    npm install -g gulp
    npm install -g yarn
