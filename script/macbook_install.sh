#!/usr/bin/env bash

dotfiles=~/github.com/abstrctn/dotfiles

for file in {path,bash_prompt,exports,aliases,functions,extra,gitconfig}; do
  [ ! -f ~/.$file ] && [ -f $dotfiles/.$file ] && ln -s $dotfiles/.$file ~/.$file;
done;

# Use .oh-my-zsh/custom as the canonical custom folder
[ ! -d ~/.oh-my-zsh/custom ] && rm -rf ~/.oh-my-zsh/custom && ln -s $dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom
