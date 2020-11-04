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

Plugin     'ekalinin/Dockerfile.vim'
Plugin     'Valloric/YouCompleteMe'
Plugin 'chriskempson/base16-vim'
Plugin       'vito-c/jq.vim'
Plugin   'scrooloose/nerdtree'
Plugin      'Xuyuanp/nerdtree-git-plugin'
Plugin         'aklt/plantuml-syntax'
Plugin  'vim-airline/vim-airline'
Plugin  'vim-airline/vim-airline-themes'
Plugin   'easymotion/vim-easymotion'
Plugin        'tpope/vim-fugitive'
Plugin        'fatih/vim-go'
Plugin  'dhruvasagar/vim-table-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" ------------------------------------------------------------
"  General Settings
" ------------------------------------------------------------

" have Vim jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Have Vim load indentation rules and plugins according to the detected filetype.
filetype plugin indent on

colorscheme base16-default-dark

let mapleader = ","

" Press shift + y to copy from the cursor to the end of the line.
nmap Y y$

set background=dark
set backspace=2     " For VIM compiled by Homebrew
set cul
set hls
set nu
set ruler
set showcmd
set showmatch
set sw=4 sts=4 et
set t_Co=256

syntax on

" Filetype specific indentation
au FileType go setlocal tabstop=4 sw=4 sts=0 noet
au FileType yaml setlocal sw=2 sts=2
au FileType rst setlocal sw=3 sts=3

" ------------------------------------------------------------
"  Plugin Specific Settings
" ------------------------------------------------------------

" nerdtree
map <Leader>n :NERDTreeToggle<CR>

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='papercolor'

" vim-go
let g:go_template_autocreate = 1
let g:go_metalinter_autosave = 1

" YCM
let g:ycm_python_interpreter_path='python3'

au FileType go,python setlocal completeopt-=preview
