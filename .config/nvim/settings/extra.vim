" ================ Python Setup ================

" Set the default Python interpreter to use
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" ================ Nerd Commenter ================
let g:NERDCustomDelimiters = {
    \ 'kivy': { 'left': '# ', 'leftAlt': '#/', 'rightAlt': '#/' },
\ }

" ================ Ale Setup ================
"silent! helptags ALL

"function! LinterStatus() abort
    "let l:counts = ale#statusline#Count(bufnr(''))

    "let l:all_errors = l:counts.error + l:counts.style_error
    "let l:all_non_errors = l:counts.total - l:all_errors

    "return l:counts.total == 0 ? 'OK' : printf(
    "\   '%dW %dE',
    "\   all_non_errors,
    "\   all_errors
    "\)
"endfunction

"set statusline=%{LinterStatus()}

" ================ Neomake Setup ================

"autocmd! BufWritePost * Neomake
"let g:neomake_python_flake8_maker = {
            "\ 'args': ['--ignore=E221,E241,E272,E251,W702,E203,E201,E202',  '--format=default'],
            "\ 'errorformat':
            "\ '%E%f:%l: could not compile,%-Z%p^,' .
            "\ '%A%f:%l:%c: %t%n %m,' .
            "\ '%A%f:%l: %t%n %m,' .
            "\ '%-G%.%#',
            "\ }
"let g:neomake_python_enabled_makers = ['flake8']

" ================ Deoplete Setup ================

"let g:deoplete#enable_at_startup = 1
"let g:deoplete#disable_auto_complete = 0
"let g:deoplete#sources#jedi#show_docstring = 1
"call deoplete#custom#set('jedi', 'debug_enabled', 1)

"if has("gui_running")
    "inoremap <expr><C-Space> deoplete#mappings#manual_complete()
"else
    "inoremap <expr><C-@> deoplete#mappings#manual_complete()
"endif

" ================ UltiSnips Setup ================

inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"     " If you want :UltiSnipsEdit to split your window.

" ================ CtrlP Setup ================

let g:ctrlp_map = '<c-p>'       " Ctrl + P rebinding
let g:ctrlp_cmd = 'CtrlP'       " Set the CtrlP command

" Improve CtrlP for git projects
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }       " Use a faster fuzzy matcher

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],}
endif

" ================ NERDTree Setup ================

" Set NERDTree to open automatically a directory is opened with Vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Startify | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ================ JavaComplete Setup ================
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" ================ CSyntaxAfter Setup ================
"autocmd! FileType c,cpp,java,php call CSyntaxAfter()

" ================ Pandoc Setup ================
call pandoc#formatting#DisableAutoformat()

" ================ Dein Setup ================
" Automatically installs plugins on startup
if dein#check_install()
  call dein#install()
endif
