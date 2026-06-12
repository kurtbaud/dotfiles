# Additions for GitHub Codespaces — sourced/appended via dotfiles

# KGB 01Jun26

EDITOR=vim
VISUAL=vim

set -o vi

alias browser='pkill -f "http.server 8080" 2>/dev/null; sleep 1; python3 -m http.server 8080 > /dev/null 2>&1 &'

# EOF
