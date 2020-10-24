"ref: (https://note.com/yasukotelin/n/na87dc604e042)
let g:deoplete#enable_at_startup = 0 
call deoplete#custom#option({
       \   'auto_complete_delay': 0,
       \   'smart_case': v:true,
       \ })
let g:deoplete#enable_ignore_case = 1
autocmd CompleteDone * silent! pclose!
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
