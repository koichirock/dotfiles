#! /bin/bash

# Install
brew install volta
volta install node yarn npm
brew install deno

# Completions
npm completion >>~/.zshrc
deno completions zsh >$ZSH/completions/_deno
volta completions zsh >$ZSH/completions/_volta
