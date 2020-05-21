
" Fix tabs
set tabstop=4
set softtabstop=4
set expandtab


" Searching options
set incsearch " search as characters are entered
set hlsearch  " highlight matches


" Show the current command in the status bar
"set showcmd

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Pressing <esc> twice to clear the highlighting
nmap <esc><esc> :noh<return>

" Setup pathogen 
"
" mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle && \
" curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"
" https://github.com/tpope/vim-pathogen
call pathogen#infect()
syntax on
filetype plugin on
filetype plugin indent on
