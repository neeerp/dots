let $FZF_DEFAULT_OPTS='
            \ --reverse 
            \ --preview "if file -i {}|grep -q binary; then file -b {}; else bat --style=changes --color always --line-range :40 {}; fi" 
            \ --color=gutter:-1 
            \ --bind ctrl-p:abort
\ '

 

"""""""""""""""""
"   AESTHSTIC   "
"""""""""""""""""

" Position and Size
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.4, 'yoffset': 0 } }

" Preview Window Syntax Highlighting
let $BAT_THEME="gruvbox"


"""""""""""""""""
"     CLOSE     "
"""""""""""""""""

" Close when the FZF window loses focus
au TermLeave *#FZF* call g:KillFuzzy()

" Find and kill all FZF buffer instances
function g:KillFuzzy()
    let l:myVar = filter(range(1, bufnr('$')), 'bufname(v:val) =~# ";#FZF"')
    for i in l:myVar
        " Delete buffer by ID
        execute 'bdelete! ' . i
    endfor
endfunction


"""""""""""""""""
"   KEY BINDS   "
"""""""""""""""""

" Open FZF Window for the current repository or cwd
nnoremap <C-p> :call FZFOpen(":GFiles") <CR>

" Project Search
nnoremap <C-f> :call FZFOpen(":Rg") <CR>


"""""""""""""""""
"     OPEN      "
"""""""""""""""""

" Prevent FZF commands from opening in none modifiable buffers
" Thanks to: https://github.com/junegunn/fzf/issues/453#issuecomment-700943343
function! FZFOpen(cmd)
    " If more than 1 window, and buffer is not modifiable or file type is
    " NERD tree or Quickfix type
    if winnr('$') > 1 && (!&modifiable || &ft == 'nerdtree' || &ft == 'qf')
        " Move one window to the right, then up
        wincmd l
        wincmd k
    endif
    exe a:cmd
endfunction
