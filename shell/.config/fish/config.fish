if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

enable_transience
fish_vi_key_bindings

zoxide init fish | source

fish_add_path "/home/niko/.cargo/bin"
