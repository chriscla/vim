map <right> :bn<cr>
map <left> :bp<cr>
map <F12> :cn<CR>

set clipboard=unnamed
set nocompatible
set backspace=indent,eol,start
set nobackup
set history=20
set ruler
set showcmd
set incsearch
set ignorecase
set smartcase
set hlsearch
set background=light
set tabstop=6
set softtabstop=6
set expandtab
set shiftwidth=6
set textwidth=76
set nomodeline

syntax on
set number

filetype plugin on
filetype indent on

set directory=$TEMP
set viewdir=$HOME\vimfiles\views
colorscheme ir_black

augroup Python
      autocmd BufEnter *.py,*.pyw set ai shiftwidth=4 ts=4 sta et fo=croql softtabstop=4 
      " Remove trailing whitespace when saving files
      autocmd BufWritePre *.py,*.pyw :%s/\s\+$//e
	au BufWinLeave *.py mkview
	au BufWinEnter *.py silent loadview
augroup end 
