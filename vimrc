" vundle has to go first
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" misc stuff
set encoding=utf-8
set ffs=unix,dos,mac
filetype plugin indent on
set so=3
set ruler
set nobackup
set nowb
set noswapfile
set number
syntax enable
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" indents
set ai
set si
set wrap
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" treat long lines as break lines
map j gj
map k gk

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic

" X clears highlights
nmap X :noh<Return>

" splits
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
map <Up> :resize +1<CR>
map <Down> :resize -1<CR>
map <Left> :vertical resize -1<CR>
map <Right> :vertical resize +1<CR>
set splitbelow
set splitright

" nerdtree
nmap <silent> <C-N> :NERDTreeToggle<CR>
