" ------------------------------------------------------------
"  Vundle
" ------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chriskempson/base16-vim'
Plugin   'scrooloose/nerdtree'
Plugin      'Xuyuanp/nerdtree-git-plugin'
Plugin  'vim-airline/vim-airline'
Plugin  'vim-airline/vim-airline-themes'
Plugin   'easymotion/vim-easymotion'
Plugin        'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" ------------------------------------------------------------
"  General Settings
" ------------------------------------------------------------

if has("autocmd")
    " have Vim jump to the last position when reopening a file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    " Have Vim load indentation rules and plugins according to the detected filetype.
    filetype plugin indent on
endif

colorscheme base16-default-dark

let mapleader = ","

set background=dark
set cul
set hls
set nu
set ruler
set showcmd
set showmatch
set sw=4 sts=4 et

syntax on

" ------------------------------------------------------------
"  Plugin Specific Settings
" ------------------------------------------------------------

" nerdtree
map <Leader>n :NERDTreeToggle<CR>

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='papercolor'
