#! /bin/bash

# Install
brew install terraform
brew install packer
brew install kube-ps1
brew install kubectx
brew install kubernetes-cli

# Completions
kubectl completion zsh >$ZSH/completions/_kubectl
