syntax enable
set ttytype=xterm-color

set incsearch

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set nobackup
set nowritebackup

set splitright
set autowrite
set backspace=2

set textwidth=80
set background=dark

set nocompatible

filetype on
filetype plugin on

set pastetoggle=<F7>

" Custom macros
map <F2> oprintf ("%s: %s (%d)\n", __FILE__, __PRETTY_FUNCTION__, __LINE__);<ESC>==
map <F3> ofprintf (stderr, "%s: %s (%d)\n", __FILE__, __PRETTY_FUNCTION__, __LINE__);<ESC>==

" Python syntax options
let python_highlight_all = 1

" Docs for plugins
helptags $HOME/.vim/doc

set laststatus=2
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

" Jump to last position when opening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
 endif
