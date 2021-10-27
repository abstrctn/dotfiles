# This is used only in codespaces

export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=/workspaces/.codespaces/.persistedshare/dotfiles/.oh-my-zsh/custom

plugins=(git)
source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true