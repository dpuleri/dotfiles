#!/bin/sh

echo "Setting up your Mac..."

# # Update Homebrew recipes
# brew update
#
# # Install all our dependencies with bundle (See Brewfile)
# brew tap homebrew/bundle
# brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -irf $HOME/.zshrc
ln -s $HOME/.dotfiles/zshrc.symlink $HOME/.zshrc

# Removes .vimrc if it exists and then symlinks it
rm -irf $HOME/.vimrc
ln -s $HOME/.dotfiles/vimrc.symlink $HOME/.vimrc

# Removes git configurations and then symlink mine
rm -irf $HOME/.gitconfig
ln -s $HOME/.dotfiles/gitconfig.symlink $HOME/.gitconfig
rm -irf $HOME/.gitignore
ln -s $HOME/.dotfiles/gitignore.symlink $HOME/.gitignore

# flake8 (python linter) config
rm -irf $HOME/.flake8
ln -s $HOME/.dotfiles/flake8.symlink $HOME/.flake8
