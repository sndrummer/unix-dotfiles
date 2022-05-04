# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
  #
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# dotfiles config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Vim
alias vim='nvim'

# General
alias cl='clear'
alias ls='exa'
alias lsi='exa --icons'
alias ll='ls -alF'
alias la='ls -a'
alias tree='exa --tree --level=2 --icons'
alias tree_all='exa --tree --icons'
alias xargs='xargs ' # aliased commands passed to xargs will be expanded

# Some cs utils
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias cd.......='cd ../../../../../..'
alias cd2='cd...'
alias cd3='cd....'
alias cd4='cd.....'
alias cd5='cd......'
alias cd6='cd.......'

# Git
alias st='git status'
alias ci='git commit'
alias co='git checkout'
alias br='git branch'
alias unstage='git reset HEAD --'
alias last='git log -1 HEAD'
alias gl='git log'
alias gd='git diff'
alias gsync='git add .; git commit -m "update"; git push'
alias git_add_modified='git ls-files --modified | xargs git add'
alias assume_unchanged='git update-index --assume-unchanged'
alias cs='config status'
alias config_add_modified='config ls-files --modified | xargs config add'
alias config_update='config_add_modified; config commit -m "update"; config push'
alias csync='config_update'

# Ripgrep
# -----------------
alias rg="rg --smart-case"
alias rgf='rg --no-ignore -l --files | rg' # find files with ripgrep !!!

# Utilities
alias close_tmux_sessions='pkill -f tmux'
alias close_tmux_sessions='pkill -f tmux'
alias quick_find='rg --hidden --glob "!.git/" . | fzf'
alias quick_find_include_git_files='rg --hidden . | fzf'
alias qf='quick_find'
alias quick_find_no_filename='grep -rnh '.' -e'
alias find_file='rgf'
alias compress_dir='tar -czf file.tar.gz'
alias tar_list_contents='tar -ztvf'
alias tar_extract='tar -xzf file.tar.gz'
alias sb='source ~/.bashrc'
alias editzshrc='vim ~/.zshrc; source ~/.zshrc'
alias sz='source ~/.zshrc;'
alias editbashrc="vim ~/dotfiles/.bashrc;"
alias edittmux="vim ~/dotfiles/.tmux.conf; tmux source-file ~/.tmux.conf"
alias editvimrc="vim ~/dotfiles/nvim.vim"
alias editplug="vim ~/.config/nvim/plug.vim"
alias editclangformat='vim ~/.clang-format'
alias editcocsettings='vim ~/.config/nvim/coc-settings.json'
alias cddotfiles="cd ~/dotfiles"
alias cdnvim='cd ~/.config/nvim'
alias amend_commit='git add .; git commit --amend --no-edit'
alias push_notes='cd ~/notes; git add .; git commit -am "update notes"; git push; cd -'
alias show_chmod="stat --format '%a'"
alias print_chmod="stat --format '%a'"
alias move_to_dir='xargs -I '{}' mv {}'   # type folder name
alias move_all_cpp_files_to_dir='find_all_cpp_files_in_dir | xargs -I '{}' mv {}'   # type folder name
alias move_all_h_files_to_dir='find_all_header_files_in_dir | xargs -I '{}' mv {}'  # type folder name

# My Aliases
alias tmux_help='echo "tmux ls; tmux attach-session -t <session_number>"'
alias touchpython='cp ~/scripts/template_python_script.py .'
alias cdplug='cd ~/.vim/plugged'

# WSL
if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ]; then
  source ~/.wsl-zshrc
fi
case `uname` in
  Darwin)
    # export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
  ;;
  Linux)
    # commands for Linux go here
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac

# Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# This one is good for ignoring crap
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'

# This one is good for searching everything
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore
#export FZF_DEFAULT_COMMAND='rg --files --hidden --follow"'
#export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
#export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/"'

# Fix completion
unsetopt completealiases
fpath=(~/.zsh $fpath)

function lessf() {
  less $(fzf)
}

function vimf() {
  vim $(fzf)
}

function gch
{
    git checkout $(git branch -a | sed 's/remotes\/origin\///g' | fzf | tr -d '[:space:]');
}

