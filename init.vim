set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 

set mouse=v                 " middle-click paste with 
set mouse=a                 " enable mouse click

set ignorecase              " case insensitive 
set smartcase
set hlsearch                " highlight search 
set incsearch               " incremental search

set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents

set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " relative line number
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" set clipboard=unnamedplus   " using system clipboard
set clipboard^=unnamed,unnamedplus

" fast edit vimrc
nmap <leader>v :edit $MYVIMRC<CR>

"colorscheme desert
colorscheme morning

"" Use 'magic' for search always
" From http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap / /\v
vnoremap / /\v

" clear search terms
nnoremap <silent> <leader><space> :nohlsearch<cr>

" https://stackoverflow.com/questions/21316727/automatic-closing-brackets-for-vim
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" consistent with C and D
nnoremap Y y$

" encoding
set encoding=utf-8

" apply macro with Q. qq to create macro using register q, quit with q
" apply with Q
nnoremap Q @q
vnoremap Q :norm @q<cr>

" shortcut to switch between buffers
" https://stackoverflow.com/a/5563142/4475353
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" close buffer
nnoremap <leader>w :bdelete<cr>

" add blank line
" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

" select visual block again after decreasing or increasing indent
vnoremap < <gv
vnoremap > >gv

" allow moving into blank space in visual block mode
set virtualedit=block

" move by screen line without count, but move by actual line with count
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <expr> k v:count == 0 ? 'gk' : 'k'
xnoremap <expr> j v:count == 0 ? 'gj' : 'j'

set ruler

