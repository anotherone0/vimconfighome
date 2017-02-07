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

set noeb vb t_vb=

nmap <leader>u :vsc File.TfsUndoCheckout<CR>
nmap <leader>w :vsc File.CloseAllButThis<CR>

set backupdir=~/.vim/backup//,.
set dir=~/.vim/swap//,.
set undodir=~/.vim/undo//,.

function! DoBuildBatchFile()
    set makeprg=build.bat
    set errorformat=%f(%l):\ %m "C++ efmt
    " set errorformat=%f(%l\\\,%c):\ %m "c# efmt
    silent make
    cw
    echo 'Build Complete'
endfunction

nnoremap <Leader>m :call DoBuildBatchFile()<CR>
nnoremap <Leader>r :!run.bat<CR>


let g:ctrlp_custom_ignore = {
            \'dir':  '\v[\/]\.(git|hg|svn)$',
            \'file': '\v\.(exe|obj|dll|lib|tlog)$',
            \ }


" language specific stuff
" =======================

"vimgo
let g:go_doc_keywordprg_enabled = 0 "disable k so i can use my old mapping

