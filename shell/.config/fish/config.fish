if status is-interactive
    # tldr --quiet $(tldr --quiet --list | shuf -n1)
end

set -g fish_greeting "Fish starting in $PWD"

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

enable_transience
fish_vi_key_bindings

zoxide init fish | source

fish_add_path "/home/niko/.cargo/bin"

source ~/.config/fish/alias.fish

