" ================ Convenience =========================

" Remap leader key from '\' to space
let mapleader=" "

" Remove colons for maximum gastric efficiency
nnoremap ; :

" Auto indent pasted text
"nnoremap p p=`]<C-o>
"nnoremap P P=`]<C-o>

" Save file with <Leader> w
nnoremap <Leader>w :w<CR>

" Save file with Ctrl+s in insert mode
inoremap <C-s> <C-o>:w<CR>i

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
nmap <C-o> o<Esc>j
nmap <C-S-o> O<Esc>k

" Clear the search buffer when hitting leader + return
nnoremap <silent> <leader><cr> :nohlsearch<cr>

" ================ Navigation ==========================

" Allow the use of enter instead of G and backspace instead of gg
" Enter goes to the bottom of the file
"nnoremap <CR> G
" Backspace goes to the top of the file
"nnoremap <BS> gg

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
autocmd filetype rmd nnoremap <F1> :w<CR>:RMarkdown pdf<CR> :silent exec '!mupdf '.shellescape('%:r').'.pdf'<CR>

" Javacomplete keyboard shortcuts
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)<Paste>

" Allow region selection expansion with the same key
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Map the NERDTree toggle to Ctrl + N
map <C-n> :NERDTreeToggle<CR>

" Map the Tagbar toggle to Ctrl + M
map <C-m> :TagbarToggle<CR>

" Use the improved incsearch plugin
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
