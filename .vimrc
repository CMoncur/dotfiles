" Syntax highlighting
syntax on

" Current color scheme
colorscheme molokai_dark

" Display Line Numbers
set number

" Make backspace function like a real backspace
set backspace=indent,eol,start

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'

call plug#end()

" Plugin Settings
" NerdTree
let NERDTreeShowHidden=1
