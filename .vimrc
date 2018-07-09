" Vim Plug Automatic Install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Syntax highlighting
syntax on

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd Filetype haskell setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype sass setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

" Display Line Numbers
set number

" Detect file changes and refresh in real time
set autoread

" Make backspace function like a real backspace
set backspace=indent,eol,start

" Highlight column at 80 characters
set colorcolumn=80

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'ajmwagar/vim-deus'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'neovimhaskell/haskell-vim'
Plug 'elmcast/elm-vim'
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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'

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

" Haskell Vim
let g:haskell_indent_disable=1

" Deus Colorscheme
colors deus
