if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cfg='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
alias nrsf='sudo nixos-rebuild switch --impure --flake .'
alias hx='helix'
alias windows='docker compose --file ~/.config/dcli/modules/vm/winapps/compose.yaml'
alias l='ll'
starship init fish | source

if type -q opam
    eval (opam env --switch=5.3.0)
end

set fish_greeting
