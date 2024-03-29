
" Fix tabs
set tabstop=4
set softtabstop=4
set expandtab

" Turn on line numbers and relative line numbers
set number
set relativenumber


" Searching options
set incsearch " search as characters are entered
set hlsearch  " highlight matches

set nocompatible

" neovide gui font
set guifont=Droid\ Sans\ Mono:h14
let g:neovide_refresh_rate = 60


filetype plugin on

" Remap the leader from \ to ,
let mapleader=","

" Show the current command in the status bar
"set showcmd

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Pressing <esc> twice to clear the highlighting
nmap <esc><esc> :noh<return>

" Require packer.nvim plugins (lua/plugins.lua)
lua require('plugins')

" Configure vim-pencil plugin
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
augroup END

" goyo plugin config
" Auto enable/disable limelight with goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" limelight plugin config
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg='gray'
let g:limelight_conceal_ctermfg=240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg='DarkGray'
let g:limelight_conceal_guifg='#777777'

" Default: 0.5
let g:limelight_default_coefficient=0.1

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority=-1
