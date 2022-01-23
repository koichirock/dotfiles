#! /bin/bash

# Install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rustfmt
rustup component add clippy

# Completions
rustup completions zsh cargo >$ZSH/completions/_cargo
rustup completions zsh rustup >$ZSH/completions/_rustup
