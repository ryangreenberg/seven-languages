#!/bin/bash

function check() {
  local cmd=$1
  local version_flag="${2:-"--version"}"
  ruby -e "cmd = '$cmd'; puts '== ' + cmd + ' ' + '=' * (80 - 4 - cmd.length)"
  "$cmd" "$version_flag"
  echo ""
}

# From https://brew.sh/
hash brew || (echo "Installing Homebrew..."; /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
echo "Installing Homebrew packages..."
brew bundle install --verbose

# Version to install comes from .ruby-version
rbenv install --skip-existing

check ruby
check io
check gprolog
