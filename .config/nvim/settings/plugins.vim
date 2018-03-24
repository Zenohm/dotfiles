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


" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" lazy load on insert mode
"call dein#add('Shougo/deoplete.nvim')           " Asynchronous code completion engine
"call dein#add('davidhalter/jedi')               " Static analysis tool for Python that can be used in IDEs/editors.
"call dein#add('davidhalter/jedi-vim')            " An autocompletion engine meant specifically for Python projects
"call dein#add('zchee/deoplete-jedi')            " An autocompletion engine meant specifically for Python projects
"call dein#add('w0rp/ale')
"call dein#add('neomake/neomake')
call dein#add('scrooloose/nerdcommenter')       " Easily comment code in a variety of languages
"call dein#add('edkolev/tmuxline.vim')
call dein#add('SirVer/ultisnips',
            \{'on_i': 1})
call dein#add('honza/vim-snippets',
            \{'on_i': 1})
call dein#add('jiangmiao/auto-pairs',
            \{'on_i': 1})                       " Automatically close brackets, braces, quotes, etc.
"call dein#add('artur-shaik/vim-javacomplete2',
            "\{'on_ft': ['java']})               " An autocompletion engine meant specifically for Java projects
call dein#add('tpope/vim-fugitive')             " Github plugin
"call dein#add('vim-scripts/cSyntaxAfter')       " Improved syntax highlighting.
"call dein#add('xolox/vim-misc')                 " Dependency of easytags.
"call dein#add('xolox/vim-easytags')             " Easy automated ctag generation and syntax highlighting.
"call dein#add('rakr/vim-one')                   " A light and dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals
call dein#add('lifepillar/vim-solarized8')      " The solarized theme for vim.
call dein#add('ajh17/spacegray.vim')            " Allow the use of the XCode theme in vim.
call dein#add('morhetz/gruvbox')                " Gruvbox in vim. Really just trying shit out at this point.
"call dein#add('tyrannicaltoucan/vim-quantum')   " Pleasant material-design color scheme for vim and syntax
"call dein#add('liuchengxu/space-vim-dark')      " The space-vim dark theme.
call dein#add('vim-airline/vim-airline')        " Fancy and fast powerline at the bottom of the window
call dein#add('vim-airline/vim-airline-themes') " Vim airline theme repository. The hint's in the name.
call dein#add('vim-pandoc/vim-pandoc')          " Use vim more as a word processor
call dein#add('vim-pandoc/vim-pandoc-syntax')   " Get syntax highlighting when using vim as a word processor
call dein#add('vim-pandoc/vim-rmarkdown')       " Support R Markdown
call dein#add('lervag/vimtex')                  " LaTeX support with compiler and viewer integration and keybindings
"call dein#add('majutsushi/tagbar',
            "\{ 'on_cmd': 'TagbarToggle'})       " Code file structure sidebar plugin
"call dein#add('scrooloose/nerdtree',
            "\{ 'on_cmd': 'NERDTreeToggle'})     " File navigation sidebar plugin. Note this plugin slows down startup noticably.
call dein#add('ryanoasis/vim-devicons')         " Special icons for certain types of files
call dein#add('mhinz/vim-startify')             " A fancy start screen for vim.
call dein#add('Shougo/denite.nvim')             " Like a fuzzy-finder, but more generic. Powered by dark wizardry.
call dein#add('ctrlpvim/ctrlp.vim')             " Powerful fuzzy file finder
call dein#add('FelikZ/ctrlp-py-matcher')        " A slightly faster file finder for use with CtrlP
call dein#add('terryma/vim-expand-region')      " Easy to use visual selection expansion
call dein#add('tpope/tpope-vim-abolish')        " Easily abbreviate words, substitute variabley cased words, and coerce function names to a certain style.
call dein#add('haya14busa/incsearch.vim')       " Improved incsearch.
call dein#add('plasticboy/vim-markdown')        " Markdown support.
call dein#add('godlygeek/tabular')              " Handle indentation.
call dein#add('easymotion/vim-easymotion')      " Better movement controls.
call dein#add('vim-scripts/TeTrIs.vim')         " Tetris in vim with Leader + Te. Need I say more?
"call dein#add('flazz/vim-colorschemes')         " Colorscheme pack
"call dein#add('eugen0329/vim-esearch')
"call dein#add('junegunn/fzf')
"call dein#add('Shougo/vimshell')
"call dein#add('airblade/vim-rooter')
"call dein#add('floobits/floobits-neovim',
"            \{'on_cmd': ['FlooShareDirPublic', 'FlooShareDirPrivate', 'FlooJoinWorkspace', 'FlooUnPause']})

" Required:
call dein#end()
