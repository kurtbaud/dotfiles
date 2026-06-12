#!/bin/bash
# KGB dotfiles installer for GitHub Codespaces
# For every file in ~/dotfiles/ matching .* (except . and ..), add a line
# to the corresponding ~/.FILE that sources it, if not already present.
# Single source of truth: ~/dotfiles/. No duplication. Safe to rerun.

for f in ~/dotfiles/.*; do
    base=$(basename "$f")
    # Skip . and .. and the .git directory
    [ "$base" = "." ] && continue
    [ "$base" = ".." ] && continue
    [ "$base" = ".git" ] && continue
    [ -f "$f" ] || continue

    target=~/"$base"
    line="source ~/dotfiles/$base"

    if ! grep -qF "$line" "$target" 2>/dev/null; then
        echo "$line" >> "$target"
        echo "Added '$line' to $target"
    else
        echo "$target already sources ~/dotfiles/$base"
    fi
done
