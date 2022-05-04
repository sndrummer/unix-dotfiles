" fuzzy finder
set rtp+=/usr/local/opt/fzf

" Git Gutter
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_enabled = 1
set signcolumn=yes

" snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

let g:coc_snippet_next = '<tab>'

set nocompatible              " be improved, required
filetype off                  " required
set ic
nnoremap <SPACE> <Nop>
let mapleader=" "

" Clear last search by hitting enter !!!
nnoremap <CR> :noh<CR><CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Yggdroot indentLine
let g:indentLine_char_list = ['|']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

nnoremap <leader>n :NERDTreeFocus<CR>
map <C-n> :NERDTree<CR>
map <C-t> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

nnoremap <leader>ll :ClangFormat<CR>
"let g:clang_format#extra_arcs = '-style=file'
"let g:clang_format#detect_style_file = 1
"let g:clang_format#auto_format_on_insert_leave = 1
"
" map ClangFormat to Ctrl+Alt+l in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><C-A-l> :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><C-A-l> :ClangFormat<CR>

" Rainbow Brackets
let g:rainbow_active = 1

" To comment/uncomment use SPACE + c + Space -- dumb but whatever
let g:NERDCreateDefaultMappings = 1
nnoremap <leader>po<space> <Plug>PeepOpen<CR>
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Move Nerd tree to the left
let g:NERDTreeWinPos = "left"

" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
let g:vimspector_sidebar_width = 75
let g:vimspector_bottombar_height = 15

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
" to CLOSE do :call vimspector#Reset()
nmap <Leader>st :call vimspector#Reset()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim Column Ruler
if exists('+colorcolumn')
  "highlight Color Column cherubs=white
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Leetcode plugin
let g:leetcode_browser='chrome'

" Quick Spell fix (last edit relative to cursor) ctr + l
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-l> [s1z=<c-o>

" Remap Indent increase/decrease
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

" RGrep and Files
" nnoremap <C-f> :Files<Cr>
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-g> :Rg<Cr>

" Remap the behaviour of Capital Y to behave like the other keys
nnoremap Y y$

set timeoutlen=800

" Stop wrapping of lines
set textwidth=0
set wrapmargin=0

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" THE MAP LEADER !!!!
nnoremap <SPACE> <Nop>
let g:mapleader=" "

" Python
let g:syntastic_python_python_exec = 'python3'

syntax on
" colorscheme molokai
colorscheme onedark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" air-line
let g:airline_powerline_fonts = 1
" let g:airline_theme='molokai'
let g:airline_theme='onedark'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Fix annoying insert of lines on quick escape
set ttimeout
set ttimeoutlen=0

" Set the current line to be highlighted
set cursorline
hi CursorLine   cterm=NONE ctermbg=8 ctermfg=NONE

" Background
if exists("$TMUX")
  let &t_RB = "\ePtmux;\e\e]11;?\007\e\\"
endif

" Clipboard
set clipboard+=unnamedplus

" Conceal level - do not conceal
set conceallevel=0
