call pathogen#infect()
call pathogen#helptags()
set runtimepath+=~/.vim/bundle/UltiSnips-2.1
syntax on
set nu
set ai
set nocompatible
set ic
set tabstop=4
set shiftwidth=4
set softtabstop=4
set laststatus=2
set showmatch
set ruler
set history=100
" Ensure correct delete/backspace mapping, even from ssh
set t_kb=
set t_kD=[3~
" Unlimited backspace in insert mode
set backspace=indent,eol,start
"set foldmethod=indent
filetype plugin indent on
colorscheme darkblue
" map ii to exit insert mode 
imap <silent> ii <Esc>:let &insertmode=0<CR>
" toggle showing hidden characters
nmap ,l :set list!<CR>
:au BufEnter *.rb set sw=2 sts=2 et ai
au BufNewFile *.rb set fileformat=unix tabstop=2 shiftwidth=2 softtabstop=2

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

