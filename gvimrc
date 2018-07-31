"set background=dark
" colorscheme gotham 
colorscheme ubaryd
" colorscheme vendetta
" colorscheme slate
" colorscheme blues
" colorscheme autumn
" colorscheme predawn
" colorscheme solarized
" colorscheme spurs_away
" colorscheme sunburst
" colorscheme blues
" colorscheme koehler
" colorscheme greenvision

" AirlineTheme luna
" AirlineTheme base16_atelierseaside "green and gray mostly

set encoding=utf-8

"no errorbells
set vb t_vb=
"
set cursorline
set colorcolumn=80

"airline
set laststatus=2

let g:airline_powerline_fonts = 0

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
let g:airline_section_y = '%{strftime("%c")}'
set guifont=Consolas:h12
" set guifont=Inconsolata\ for\ Powerline:h

" let g:airline_left_sep = ' '
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ' '
" let g:airline_right_alt_sep = '|'
" set guifont=Consolas:h12

"bufferline
let g:bufferline_echo = 0

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


