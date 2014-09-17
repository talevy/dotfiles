#!/bin/bash

############################################
# Install Command Line Developer Tools
############################################

xcode-select --install

############################################
# Install Homebrew Package Manager
############################################

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
brew doctor

############################################
# Install tmux
############################################

brew install tmux

############################################
# Install The Silver Searcher srcode grep tool
############################################

brew install the_silver_searcher

############################################
# Install Karabiner - keymapper for mac os x
############################################

curl -s -O https://pqrs.org/osx/karabiner/files/Karabiner-10.2.0.dmg
hdiutil attach Karabiner-10.2.0.dmg
installer -pkg /Volumes/Karabiner-10.2.0/Karabiner.pkg -target /
diskutil unmount /Volumes/Karabiner-10.2.0

############################################
# Install Seil - utility for the caps lock key remapping
############################################

curl -s -O https://pqrs.org/osx/karabiner/files/Seil-10.10.0.dmg
hdiutil attach Seil-10.10.0.dmg
installer -pkg /Volumes/Seil-10.10.0/Seil.pkg -target /
diskutil unmount /Volumes/Seil-10.10.0/

############################################
# Install Slate - Window Management
############################################

cd /Applications
curl -s http://www.ninjamonkeysoftware.com/slate/versions/slate-latest.tar.gz | tar -xz

############################################
# Install Google Chrome
############################################

curl -s -O https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
hdiutil attach googlechrome.dmg
cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
diskutil unmount /Volumes/Google\ Chrome/

############################################
# Install Neobundle for vim
############################################

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

############################################
# Install Rust
############################################

curl -s https://static.rust-lang.org/rustup.sh | sudo sh
