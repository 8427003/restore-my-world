GIT_PROJECT_DIR=~/git

mkdir -p "$GIT_PROJECT_DIR"
git clone https://github.com/8427003/cocoVim.git


BUNDLE_DIR=~/.vim/bundle

# Install/update Vundle
mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim "$BUNDLE_DIR/Vundle.vim" || (cd "$BUNDLE_DIR/Vundle.vim" && git pull origin master))

# Install bundles
vim +PluginInstall +qall

# Install fonts
#cp -rf $DOTFILES_DIR/fonts/* ~/Library/Fonts/
