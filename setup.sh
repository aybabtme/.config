#!/usr/bin/env bash
root=$(git rev-parse --show-toplevel)

if [ $root != $HOME/.config ]; then
  echo "Config repo isn''t located at $HOME/.config, making symlink"
  ln -s $root $HOME/.config
fi
ln -s $root/git/gitconfig $HOME/.gitconfig
ln -s $root/git/gitignore $HOME/.gitignore
ln -s $root/vim $HOME/.vim 

systemctl --user enable ssh-agent
systemctl --user start ssh-agent
