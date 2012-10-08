dotfiles
========

remember me


install vim with python and ruby
--------------------------------
http://iamnearlythere.com/installing-vim-python-ruby-support-homebrew/
```bash
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/vim.rb
``` 

connect the dots on a new machine
---------------------------------
```bash
cd ~
git clone http://github.com/talevy/dotfiles.git
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
git submodule init
git submodule update
```
