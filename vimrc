let g:ruby_path='/usr/bin/ruby'

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
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'rking/ag.vim'
" NeoBundle 'scrooloose/syntastic'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'benmills/vimux'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'

" Vimux plugins
NeoBundle 'julienr/vim-cellmode'


" FileTypes
NeoBundle 'wting/rust.vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-git'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'fatih/vim-go'
NeoBundle 'derekwyatt/vim-scala'

"""""
" Colours!
"""""
NeoBundle 'ywjno/vim-tomorrow-theme'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'tomasr/molokai'
NeoBundle 'sjl/badwolf'

NeoBundle 'phildawes/racer', {
\   'build' : {
\     'mac': 'cargo build --release',
\     'unix': 'cargo build --release',
\   }
\ }
let g:racer_cmd = "/usr/local/bin/racer"
let $RUST_SRC_PATH="/usr/local/src/rust/src/"


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

set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif

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

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <leader>t :NERDTreeToggle<CR>
map <leader>y :TagbarToggle<CR>

" indent rules
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap
