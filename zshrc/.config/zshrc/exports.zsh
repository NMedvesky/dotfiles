#!/bin/sh
export EDITOR='nvim'
export TERMINAL='alacritty'
#export BROWSER='qutebrowser'
# export TERM='tmux-256color'

export PYTORCH_ENABLE_MPS_FALLBACK=1
export C_INCLUDE_PATH='/Library/Frameworks/Python.framework/Versions/3.9/Headers'
export PROMPT_EOL_MARK=''

# Fix miniconda error
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY='1'

export PASSWORD_STORE_ENABLE_EXTENSIONS=true

export PATH="$PATH:$HOME/Library/Application Support/itch/apps/butler"

# Rust/Cargo
RUSTC_WRAPPER=sccache
