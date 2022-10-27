call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'

call plug#end()

set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set hlsearch		" Highlight all pattern matches
set incsearch		" Highlight all pattern matches

colorscheme gruvbox	" it is gruvbox
set background=dark	
set nobackup            " get rid of anoying ~file

nnoremap <F2> :NERDTreeToggle<CR>

