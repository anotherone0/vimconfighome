execute pathogen#infect()

filetype plugin indent on

set autoindent
set smartindent
set ignorecase
set smartcase
set ruler

"make tabs 4 spaces
set tabstop=4
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


vmap af /{<CR>%V

nmap S :%s//g<LEFT><LEFT>
vmap S :s//g<LEFT><LEFT>

nmap gr gT

colorscheme slate

set noeb vb t_vb=

" vscommands
" nmap <leader>u :vsc File.TfsUndoCheckout<CR>
" nmap <leader>w :vsc File.CloseAllButThis<CR>


set backupdir=~/.vim/backup//,.
set dir=~/.vim/swap//,.
set undodir=~/.vim/undo//,.

" general build for msbuild
" @"C:\Program Files (x86)\MSBuild\14.0\Bin\MsBuild.exe" /nologo /v:q /property:GenerateFullPaths=true

" C:\Program Files (x86)\MSBuild\12.0\bin\Microsoft.Common.CurrentVersion.targets(1696,5): warning MSB3088: Could not read state file "obj\Debug\SatelliteInfoProvider.csprojResolveAssemblyReference.cache". Unable to find assembly 'Microsoft.Build.Tasks.Core, Version=14.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a'. [C:\Users\fraccat\Desktop\softspace\wpc\Apps\CCC\SatelliteInfoProvider\SatelliteInfoProvider.csproj]
" c:\Users\fraccat\Desktop\softspace\wpc\Apps\CCC\SystemPanelWeb\Controllers\AlarmController.cs(12,7): error CS1041: Identifier expected; 'static' is a keyword [C:\Users\fraccat\Desktop\softspace\wpc\Apps\CCC\SystemPanelWeb\SystemPanelWeb.csproj]

function! DoBuildBatchFile()
    set makeprg=build.bat
    " set errorformat=%f(%l):\ %m "C++ efmt
    " set errorformat=%f(%l\\\,%c):\ %m "c# efmt
    set errorformat=%f(%l\\\,%c):\ %#%t%[A-z]%#\ %m "c#vs efmt
    silent make
    cw
    " call feedkeys("\<C-w>L")
    echo 'Build Complete'
endfunction

nnoremap <Leader>m :call DoBuildBatchFile()<CR>
nnoremap <Leader>r :!run.bat<CR>
nnoremap <Leader>t :!test.bat<CR>


" let g:ctrlp_custom_ignore = { 
"             \'dir':  '\v[\/]\(\.git|\.hg|\.svn)$',
"             \'file': '\v\.(exe|obj|dll|lib|tlog|class)$',
" \ }

" angular
let g:ctrlp_custom_ignore = { 
            \'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
            \'file': '\v\.(exe|obj|dll|lib|tlog|class|map|js)$'
\ }

let g:ctrlp_working_path_mode = 'a'
" use when based off of .git
" let g:ctrlp_working_path_mode = 'ra'


" language specific stuff
" =======================

"vimgo
let g:go_doc_keywordprg_enabled = 0 "disable k so i can use my old mapping

