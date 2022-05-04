set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/coc.vim

source ~/.vimrc
let uname = substitute(system('uname'),'\n','','')
if uname == 'Darwin'
  source $HOME/.config/nvim/macos.vim
elseif uname == 'Linux'
  if system('$PATH')=~ '/mnt/c/WINDOWS'
    " We are in Windows Subsystem
    source ~/.config/nvim/wsl_linux.vim
  endif
endif

" Tree Sitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages

  ignore_install = { "phpdoc" },

  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" C++ settings
source $HOME/.config/nvim/cpp.vim
