let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ ]

autocmd CompleteDone * silent! pclose!
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
nnoremap <silent> K :call CocAction('doHover')<CR>
"ref: https://qiita.com/hakanai03/items/29e97e6192a513e0999b
autocmd BufNewFile,BufRead *.tsx let b:tsx_ext_found = 1
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
