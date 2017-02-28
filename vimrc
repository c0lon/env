execute pathogen#infect()

set encoding=utf-8
set ffs=unix,dos,mac

" set leader to SPACE
"nnoremap <Space> <Nop>
"let mapleader=" "

" map jj to ESC
"inoremap jj <ESC>

" how many commands vim should remember
set history=500

" filetype plugins
filetype plugin on
filetype indent on

" refresh a file automatically when it changes outside of vim
set autoread

" keep lines above/below the cursor
set so=7

" list items in context menus
set wildmenu

" always show current position
set ruler

" make searching great again
set ignorecase
set smartcase
set hlsearch
set incsearch
nmap X :noh<Return>

" regexes are magic
set magic

" show matching brackets for .2 seconds
set showmatch
set mat=2

" no annoying sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" increase left margin
set foldcolumn=1

" make it look purdy
syntax enable
colorscheme CandyPaper
set background=dark

" no backups/swap files
set nobackup
set nowb
set noswapfile

" line numbers
set number
set relativenumber

" tab stuff
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" indent stuff
set ai
set si
set wrap

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=99

" treat long lines as break lines
map j gj
map k gk

" insert newline without entering edit mode
nmap <CR> o<Esc>

" map <space>/<c-space> to search/reverse search
map <space> /
map <c-space> ?

" status line
set laststatus=2
set statusline=\ %n\ %f\ %=%l/%L,\ %v

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

" refresh file + jump to last line
" for log files
map K :e<Return>G

" nerdtree
nmap <silent> <C-N> :NERDTreeToggle<CR>
