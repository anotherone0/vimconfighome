"set background=dark
"colorscheme solarized
colorscheme gotham 

set encoding=utf-8

"no errorbells
set vb t_vb=

"airline
AirlineTheme luna
set laststatus=2
set guifont=Inconsolata\ for\ Powerline:h14
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"bufferline
let g:bufferline_echo = 0

"set guifont=Consolas:h14:cANSI
"set guifont=Cousine\ For\ Powerline:h14

" au GUIEnter * simalt ~x "times without dll
"set lines=999
"set columns=999
"
au GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


