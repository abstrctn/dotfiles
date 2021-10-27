# This is used only in codespaces (not symlinked locally)

export ZSH=$HOME/.oh-my-zsh

# Load bashrc, which will load all of our .aliases and .exports
source ~/.bashrc

# Install extra shared dotfiles
[ ! -L ~/.oh-my-zsh/custom ] && rm -rf ~/.oh-my-zsh/custom && ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom

plugins=(git)
source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true