if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g -x fish_greeting ''

set -gx EDITOR nvim

set -gx VISUAL $EDITOR

if command -v exa >/dev/null
    alias ls='exa --icons --color=always --group-directories-first'
else
    alias ls='ls --color=auto'
end

alias cat='bat --style=plain'

if command -v tree >/dev/null
    alias tree='tree -C -F --dirsfirst'
end

set -U fish_history 50000

set -g fish_complete_path $fish_complete_path /usr/share/fish/completions

function fish_prompt
    set_color normal
    set -l reset (set_color normal) 
    
    set -l reset (set_color normal)
    set -l user_color (set_color -o cyan)
    set -l host_color (set_color -o green)
    set -l git_clean_color (set_color -o green)
    set -l git_dirty_color (set_color -o red)
    set -l error_color (set_color -o red)
    set -l info_color (set_color -o yellow)

    set -l symbol_branch ""
    set -l symbol_modified "✗"
    set -l symbol_arrow ""
    set -l symbol_success "✔"
    set -l symbol_fail "✖"

    set -l whoami (whoami)
    set -l short_host (hostname | cut -d. -f1)
    if test "$whoami" != "$short_host"
        printf "%s%s@%s%s " $user_color $whoami $host_color $short_host $reset
    end
    
    set -l cwd (prompt_pwd)
    printf "%s%s%s " $path_color $cwd $reset

    printf "  "
end

zoxide init fish | source
