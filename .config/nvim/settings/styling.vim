" Set up color scheme
"let g:quantum_black = 1
"let g:quantum_italics = 1

let g:airline_theme ='one'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
"let g:airline_left_sep = '⮀'
let g:airline_left_sep = ''
"let g:airline_left_sep = ' '
"let g:airline_left_sep = ' '
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '⮁'
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = '⮂'
let g:airline_right_sep = ''
"let g:airline_right_alt_sep = '⮃'
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

if has("termguicolors")
    set termguicolors
endif

set background=dark
colorscheme one
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi Normal ctermbg=none

