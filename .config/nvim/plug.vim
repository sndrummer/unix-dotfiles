" Plugs - all vim plugins go here
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '~/.fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'hoob3rt/lualine.nvim'
Plug 'kristijanhusak/defx-git'
Plug 'airblade/vim-gitgutter'
Plug 'kristijanhusak/defx-icons'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'pboettch/vim-cmake-syntax'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ianding1/leetcode.vim'
Plug 'Chiel92/vim-autoformat'
" Nerd Tree
Plug 'preservim/nerdtree'
" Surround
" Example `cs"'` to "Hellow world!" will change it to 'Hello world!'
Plug 'tpope/vim-surround'
" Clang-format
" if you use this in visual mode then it will only format the selected code
Plug 'rhysd/vim-clang-format'
Plug 'luochen1990/rainbow'
" Nerd Commenter
" Usage: [count]<leader>cc --> this comments out the selected lines
" Usage: [count]<leader>ci --> this INVERTS the commented lines
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'

" Debugger plugins
Plug 'puremourning/vimspector'
" default maximizer key is F3
Plug 'szw/vim-maximizer'


" Plug End
call plug#end()

