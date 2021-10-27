#!/usr/bin/env bash

for file in {path,bash_prompt,exports,aliases,functions,extra}; do
  [ ! -f ~/.$file ] && [ -f ~/github.com/abstrctn/dotfiles/.$file ] && ln -s ~/github.com/abstrctn/dotfiles/.$file ~/.$file;
done;
