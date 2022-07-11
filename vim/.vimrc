" Fix tabs
set tabstop=4
set softtabstop=4
set expandtab


" Searching options
set incsearch " search as characters are entered
set hlsearch  " highlight matches

" Show the current command in the status bar
set showcmd

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Setup relative line numbers
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" Set the colors
set t_Co=256

" Pressing <esc> twice will clear the search highlight
nmap <esc><esc> :noh<return>

" Set the font for gvim
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ Regular\ 14
endif

" Setup pathogen 
"
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"
" https://github.com/tpope/vim-pathogen
call pathogen#infect()
syntax on
filetype plugin on
filetype plugin indent on

" Theme and Syntax
" vim-espresso plugin
colorscheme espresso


call pathogen#helptags() "If you like to get crazy :)
