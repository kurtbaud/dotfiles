#!/bin/bash
# KGB dotfiles installer for GitHub Codespaces
# Strips any existing KGB block, then appends current version. Safe to rerun.
#
# REQUIRES: the .bashrc file in this dotfiles repo must begin with
#   # KGB additions for GitHub Codespaces — sourced/appended via dotfiles
# and end with
#   # KGB EOF
# These markers delimit the block this script manages. Do not change
# either marker line without updating this script to match.

MARKER_START="# KGB additions for GitHub Codespaces — sourced/appended via dotfiles"
MARKER_END="# KGB EOF"

# Strip any existing block between markers (inclusive)
sed -i "/^${MARKER_START}\$/,/^${MARKER_END}\$/d" ~/.bashrc

# Append current version
cat "$(dirname "$0")/.bashrc" >> ~/.bashrc

echo "KGB dotfiles block installed/updated in ~/.bashrc"
