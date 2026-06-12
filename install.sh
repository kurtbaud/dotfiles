#!/bin/bash
# Claude Sonnet 4.6 dotfiles installer for GitHub Codespaces

# Append custom .bashrc additions if not already present
if ! grep -q "KGB additions for GitHub Codespaces" ~/.bashrc; then
    cat "$(dirname "$0")/.bashrc" >> ~/.bashrc
    echo "KGB dotfiles additions appended to ~/.bashrc"
else
    echo "KGB dotfiles additions already present in ~/.bashrc"
fi
