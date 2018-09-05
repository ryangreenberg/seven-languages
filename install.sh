#!/bin/bash

# From https://brew.sh/
hash brew || (echo "Installing Homebrew..."; /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
echo "Installing Homebrew packages..."
brew bundle install --verbose

# Version to install comes from .ruby-version
rbenv install --skip-existing
