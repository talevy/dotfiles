if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""
" Plugins
""""""""""

" IDE
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \    },
      \ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'benmills/vimux'

" Vimux plugins
NeoBundle 'julienr/vim-cellmode'


" FileTypes
NeoBundle 'wting/rust.vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-git'
NeoBundle 'pangloss/vim-javascript'

"""""
" Colours!
"""""
NeoBundle 'ywjno/vim-tomorrow-theme'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'tomasr/molokai'
NeoBundle 'sjl/badwolf'


call neobundle#end()

filetype plugin indent on
syntax on
set encoding=utf8

set hidden
set backspace=indent,eol,start

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


""""""""""""""""
" General Settings
""""""""""""""""

" new mappings for moving around windows in vim

let mapleader=','
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap H ^
noremap L $

" remove background color erase
set t_ut=

" Default Color Scheme
colorscheme badwolf 
let g:airline_theme='badwolf'

" always show the status line
set laststatus=2

" force 256 colors
set t_Co=256

" customize airline
" let g:airline_powerline_fonts = 1
let g:airline#extenstions#tabline#enabled = 1

" vim command completion
set wildmenu

" 80 char limit
set colorcolumn=81
"hi! link ColorColumn StatusLine

" racer rust vim
let g:racer_cmd="/Users/tal/Code/etc/racer/bin/racer"
let $RUST_SRC_PATH="/Users/tal/Code/etc/rust-nightly/src"
