#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
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
