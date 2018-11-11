#!/bin/bash

function header() {
  local title=$1
  ruby -e "title = '$title'; puts '== ' + title + ' ' + '=' * (80 - 4 - title.length)"
}

function check() {
  local cmd=$1
  local version_flag="${2:-"--version"}"
  header "$cmd"
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
check scala -version

# See https://stackoverflow.com/questions/9560815/
header erlang
erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  -noshell
echo ""

header clojure
clojure -e "(clojure-version)"
