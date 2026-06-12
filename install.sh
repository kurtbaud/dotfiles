#!/bin/bash
# KGB dotfiles installer for GitHub Codespaces
# Adds a line to ~/.bashrc that sources ~/dotfiles/.bashrc, if not already present.
# Single source of truth: ~/dotfiles/.bashrc. No duplication, no strip/append.
# Safe to rerun — idempotent.

SOURCE_LINE='source ~/dotfiles/.bashrc'

if ! grep -qF "$SOURCE_LINE" ~/.bashrc; then
    echo "$SOURCE_LINE" >> ~/.bashrc
    echo "Added '$SOURCE_LINE' to ~/.bashrc"
else
    echo "~/.bashrc already sources ~/dotfiles/.bashrc"
fi
