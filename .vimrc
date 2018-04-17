" Vim Plug Automatic Install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Syntax highlighting
syntax on

" Display Line Numbers
set number

" Make backspace function like a real backspace
set backspace=indent,eol,start

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'ajmwagar/vim-deus'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug '/usr/local/opt/fzf' " Requires fzf to be installed
Plug 'junegunn/fzf.vim' " Requires fzf to be installed

call plug#end()

" Plugin Settings
" NerdTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '__pycache__', '\.swp$']

" Airline
let g:airline_solarized_bg='dark'

" Syntastic
let g:syntastic_python_checkers=['pylint']

" IndentLine
let g:indentLine_color_term=239

" Vim Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Deus Colorscheme
colors deus
