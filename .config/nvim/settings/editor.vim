" ================ Visual Setup =====================

syntax on                               " Syntax highlighting
filetype plugin on                      " Try to load a plugin file for the filetype
filetype indent on                      " Try to load an indent file for the filetype
set list listchars=tab:\ \ ,trail:·     " Display tabs and trailing spaces visually
set nowrap                              " Don't wrap lines
set linebreak                           " Wrap lines at convenient points
set encoding=utf-8                      " Set encoding

" ================ Undo History =====================

" Enable persistent undo history in Neovim
set undofile
set undodir=~/.config/nvim/undo_history

" ================ Indentation ======================

set autoindent
set smartindent
set backspace=indent,eol,start
set smarttab
set shiftwidth=4
set softtabstop=0
set tabstop=4
set expandtab

" ================ Folds ============================

set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Dont fold by default

" ================ Scrolling ========================

set scrolloff=8         " Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif

" Use Ag as default grep if available
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c:%m
    command! -nargs=+ -bang Ag silent! grep <args> | redraw! | botright copen
endif
