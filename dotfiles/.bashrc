# colors
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
export VISUAL=vim
export EDITOR="$VISUAL"

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# General
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git
alias st='git status'
alias ci='git commit'
alias co='git checkout'
alias br='git branch'
alias unstage='git reset HEAD --'
alias last='git log -1 HEAD'
alias gl='git log'
alias gd='git diff'
alias assume_unchanged='git update-index --assume-unchanged'
alias cs='config status'
alias gupdate='git add .; git commit -m "update"'

# Utilites
alias amend_commit='git add .; git commit --amend --no-edit'
