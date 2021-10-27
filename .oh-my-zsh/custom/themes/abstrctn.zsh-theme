__zsh_prompt() {
    local prompt_username
    if [ ! -z "${GITHUB_USER}" ]; then
        prompt_username="@${GITHUB_USER}"
    else
        prompt_username="%n"
    fi

    function parse_git_branch () {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    }
    
    PROMPT="%{$fg[green]%}${prompt_username}" # User/exit code arrow
    PROMPT+='%{$fg[white]%}%(5~|%-1~/…/%3~|%4~)%{$reset_color%}' # cwd
    PROMPT+='%{$fg[yellow]%}$(parse_git_branch)%{$reset_color%}' # branch
    PROMPT+='%(?:%{$fg[white]%}$:%{$fg[red]%}$) %{$reset_color%}' # end of prompt for input
    unset -f __zsh_prompt
}
__zsh_prompt