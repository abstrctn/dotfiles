# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

export START=~/github.com
if [[ $PWD == $HOME ]]; then
  cd $START
fi

setopt PROMPT_SUBST
autoload -U colors && colors

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
