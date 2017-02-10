#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# 1.安装mac need devtoll
xcode-select --install

# 2.install app
# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Package managers & packages
. "$DOTFILES_DIR/install/base.sh"
. "$DOTFILES_DIR/install/dotfiles.sh"
. "$DOTFILES_DIR/install/vim.sh"

function (){

}

