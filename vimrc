execute pathogen#infect()

filetype plugin indent on

set autoindent
set smartindent
set ignorecase
set smartcase
set ruler

"make tabs 4 spaces
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
"end

set nowrap


syntax enable
set nobackup
set noswapfile

let mapleader = "\<Space>"
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>

map Y y$
map K f r<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap gr gT

colorscheme slate

set visualbell
set noerrorbells

"vimgo
let g:go_doc_keywordprg_enabled = 0 "disable k so i can use my old mapping

nmap <leader>u :vsc File.TfsUndoCheckout<CR>
nmap <leader>w :vsc File.CloseAllButThis<CR>

set backupdir=~/.vim/backup//,.
set dir=~/.vim/swap//,.
set undodir=~/.vim/undo//,.

