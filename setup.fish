#!/usr/bin/env fish

echo "Welcome to the installer for Kobold Linux/n"



echo "******************************************/n"

echo "Lets start by installing the base pacages need to the rest of the installation."

#scripts/setup/basesetup.fish
#scripts/setup/gitsetup.fish
#setup/elixirsetup.fish
#setup/ansiblesetup.fish
#scripts/setup/opsetup.fish
#setup/terraformsetup.fish
## ./postgressetup.fish -Still working on changing users to run the alter user command for postgres user
#

rm ~/.config/starship.toml
ln -s ~/code/dotfiles/config/starship.toml ~/.config/starship.toml
rm -rf ~/.config/emacs
ln -s ~/code/dotfiles/config/emacs ~/.config/emacs
rm -rf ~/.config/fish
ln -s ~/code/dotfiles/config/fish ~/.config/fish
rm -rf ~/.config/alacritty
ln -s ~/code/dotfiles/config/alacritty ~/.config/alacritty
