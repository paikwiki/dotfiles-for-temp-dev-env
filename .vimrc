filetype plugin indent on
syntax on

" Vundle

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" let Vundle manages Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' "plugin on Github repo
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim' 
call vundle#end()

set nocompatible "Vim, not Vi
set wrap
set nobackup
set backspace=eol,start,indent

" search
set nowrapscan
set hlsearch
set incsearch
set ignorecase
set history=512

" appearance
set ruler
set number
set visualbell
set title
if has("syntax")
    syntax on
endif
set t_Co=256 "color
set cursorline
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
let g:airline_theme='wombat'

" indent
set autoindent
set smartindent
set cindent
set tabstop=4
set expandtab
set shiftwidth=4

" file encoding
set encoding=utf-8
set fileencoding=utf-8
set tenc=utf-8

" Markdown (for Git)
augroup markdown
    autocmd!
    autocmd BufRead,BufNew *.md setf markdown
augroup END

" alias
let mapleader = ","

"NERDTree ON 단축키를 "\nt"로 설정
map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
"let NERDTreeQuitOnOpen=1

