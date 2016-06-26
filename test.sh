#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$DOTFILES_DIR/install/dotfiles.sh"


