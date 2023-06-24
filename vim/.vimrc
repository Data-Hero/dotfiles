""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" __     ___              ____             __ _       
"  \ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _ 
"   \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
"    \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |
"     \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
"                                                |___/ 
" Config:      A lightweight editor
" Maintainer:  Data-Hero
" Date:        03/05/2023
" Long Description: 
" A vim-plug based gruvbox themed config made for quick 
" editing. It is supposed to be a lightweight editor not
" an ide. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" __               
" |__)|    _ . _  _ 
" |   ||_|(_)|| )_) 
"         _/        
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/goyo.vim'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  __                
"  (_  _|_|_. _  _  _ 
"  __)(-|_|_|| )(_)_) 
"               _/    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Native
set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set hlsearch		" Highlight all pattern matches
set incsearch		" Highlight all pattern matches

set background=dark	
set nobackup            " get rid of ~file

" Colorscheme 
colorscheme gruvbox	" it is gruvbox 
let g:gruvbox_constrast_dark='(soft)'

" Plugins
let g:goyo_linenr=1
nnoremap <F4> :FZF<CR>
nnoremap <F5> :FZF ~<CR>
nnoremap <F6> :FZF /<CR>

