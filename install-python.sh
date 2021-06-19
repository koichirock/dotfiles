#! /bin/bash

# Install
brew install python@3.9
brew install pyenv

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Completions
poetry completions zsh >$ZSH/completions/_poetry

# Configurations
echo 'eval "$(pyenv init --path)"' >>~/.zshrc
