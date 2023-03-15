#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set environment variables for Homebrew
curl https://gist.githubusercontent.com/davidbarton/d1f034533b51a008d839efdc3154e976/raw/30783d17908ceb25bc2ce58c12327f6e055a65bb/.zprofile >> $HOME/.zprofile

# Eval
eval "$(/opt/homebrew/bin/brew shellenv)"
