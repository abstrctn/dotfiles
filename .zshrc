# This is used only in codespaces (not symlinked locally)

export ZSH=$HOME/.oh-my-zsh

# Install extra shared dotfiles
rm -rf ~/.oh-my-zsh/custom && ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom

plugins=(git)
source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true