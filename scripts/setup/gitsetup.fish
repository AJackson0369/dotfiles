#!/usr/bin/env fish

echo "Please enter the name you want to use with git: "
read name
echo "Please enter the email you want to use with git: "
read email

git config --global user.name $name
git config --global user.email $email
git config --global init.defaultBranch main

git config --global core.editor emacs
