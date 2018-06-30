" Set Neobundle runtime path
if has('vim_starting')
    " Required:
    set nocompatible
    set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
endif

" Required:
call dein#begin(expand('~/.local/share/dein')) " plugins' root path

" Let NeoBundle manage NeoBundle
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': { 'linux': 'make'}})

