# Sam's Unix Dotfiles

My current dotfiles and shell configuration

### Install Steps (before cloning this repo)

1. Install `zsh` and make default shell
2. Install [oh-my-zsh](https://ohmyz.sh/)
3. Install [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme for zsh
    - install [recommended font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
    - Clone repo: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
        ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
4. Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
    - install [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager for neovim:
    `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
5. Install command line tools:
    - [fzf](https://github.com/junegunn/fzf) - fuzzy finder
    - [exa](https://github.com/ogham/exa)    - modern replacement for `ls`
    - [rg](https://github.com/BurntSushi/ripgrep) - search tool
    - `tmux`
    - [bat](https://github.com/sharkdp/bat) `cat` with syntax highlighting


### Cloning this repo

Use bare git repository to clone:

```bash
cd ~
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
echo ".cfg" >> .gitignore
git clone --bare https://github.com/sndrummer/unix-dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```


### Neovim Notes

- Use alias `editvimrc` to edit main nvim config file (used as .vimrc), found at `~/dotfiles/nvim.vim`
- Neovim Plugin config found at `~/.config/nvim/plug.vim`
- Neovim init config file found at `~/.config/nvim/init.vim`
- COC config found at `~/.config/nvim/coc.vim`
- `:PlugInstall` in neovim window to install plugins
