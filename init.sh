#! /bin/bash

pushd $(dirname $0)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv .zshrc ~/.zshrc
md $ZSH/completions
source ~/.zshrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Copy Git configurations
cp .gitconfig .gitignore_global ~/

popd

# Install common tools
brew install jq
brew install gh
brew install fzf
brew install tmux
brew install direnv
brew install shfmt

# Rust implementation for 'ls'
brew install exa
# Rust implementation for 'grep'
brew install ripgrep
# Rust implementation for 'find'
brew install fd
# Rust implementation for 'cat'
brew install bat

# Container
brew install lima

# Completions
gh completion -s zsh >$ZSH/completions/_gh
limactl completion zsh >$ZSH/completions/_limactl
lima nerdctl completion zsh >$ZSH/completions/_nerdctl

# Configurations
echo 'eval "$(direnv hook zsh)"' >>~/.zshrc

alias ls='exa -l --git'
alias l='exa -lah --git'
alias find='fd'
alias cat='bat'
