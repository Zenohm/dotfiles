" ================ Convenience =========================

" Remap leader key from '\' to space
let mapleader=" "

" Remove colons for maximum gastric efficiency
nnoremap ; :

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Save file with <Leader> w
nnoremap <Leader>w :w<CR>

" Save and exit file with <Leader> W
nnoremap <Leader>W :wq<CR>

" Shortcut for saving read-only files
cabbrev w!! w !sudo tee "%"
"cnoremap sudow w !sudo tee % >/dev/null

" Copy and paste from system clipboard with <Leader>y and <Leader>p
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Add shortcuts to add newlines above and below current line
" without entering insert mode unnecessarily.
nmap <C-o> o<Esc>k
"nmap <C-S-o> O<Esc>j " Doesn't work because vim can't distinguish capitalization

" Clear the search buffer when hitting leader + return
nnoremap <silent> <leader><cr> :nohlsearch<cr>

" ================ Navigation ==========================

" Easy window navigation
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <leader>\ <c-^>
nnoremap <silent> <leader>q :botright copen<cr>

" Search and replace with individual review
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
            \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" ================ Additional Functionality ============

" Shortcuts for compiling and running here
autocmd filetype python nnoremap <F1> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F1> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F1> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype java nnoremap <F1> :w <bar> exec '!./compile.sh && ./run.sh'<CR>
autocmd filetype sh nnoremap <F1> :w <bar> exec '!sh '.shellescape('%')<CR>
autocmd filetype cs nnoremap <F1> :w <bar> exec '!./compile.sh && ./run.sh'<CR>
