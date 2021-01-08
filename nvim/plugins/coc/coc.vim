" Start COC
let g:coc_start_at_startup = 1


""""""""""""""""""
"  Autocomplete  "
""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Navigate Autocomplete Menus with ctrl jk
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "<C-k>"

" Helper for aborting autocomplete menu
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


""""""""""""""""""
"  Code Actions  "
""""""""""""""""""

" Apply Code Action to the region given (via vim motion)
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Call the formatter
nmap <silent> <leader>ff :call CocAction('format')<CR>


""""""""""""""""""
"   Doc Popups   "
""""""""""""""""""

" Popup Docs on cursor
nnoremap <silent> <C-e> :call <SID>show_documentation()<CR>

" Helper to pull up documentation on a symbol
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


""""""""""""""""""
"   Navigation   "
""""""""""""""""""

" Jump to Code
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Jump to Diagnostics
nmap <silent> <c-y> <Plug>(coc-diagnostic-next)
nmap <silent> <c-Y> <Plug>(coc-diagnostic-prev)


""""""""""""""""""
"   References   "
""""""""""""""""""

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


""""""""""""""""""
"     Syntax     "
""""""""""""""""""

" Make .jsonc comments behave
autocmd FileType json syntax match Comment +\/\/.\+$+
