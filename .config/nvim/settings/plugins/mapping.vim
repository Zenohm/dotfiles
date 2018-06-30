inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>" " UltiSnips use tab for completions instead of <C-n>
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:ctrlp_map = '<c-p>'       " Ctrl + P rebinding

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