"""""""""""""""""
"    BUFFERS    "
"""""""""""""""""

" Automatically Delete buffers of deleted files
let NERDTreeAutoDeleteBuffer=1

" Close the buffer if all that's left is an empty directory buffer
" This is so that closing NERDTree when nothing was opened closes vim.
autocmd BufEnter * if (winnr("$") == 1 && isdirectory(expand("%")) && exists('g:NERDLoaded')) | q | endif

"""""""""""""""""
"    STARTUP    "
"""""""""""""""""

" Change default behaviour so that rather than 'Opening' Nerdtree on
" directories, Nerdtree roots itself at the specified directory, opening with a
" blank panel on the right and being toggleable from the get-go.
let g:NERDTreeHijackNetrw=0
augroup NERDTreeHijackNetrw
    " Stop Netrw from launching
    autocmd VimEnter * silent! autocmd! FileExplorer
    " Open NERDTree rooted at the opened directory
    autocmd VimEnter * exe s:NERDTryOpenDir()
augroup END

" Open NERDTree only if the opened file was a directory. Otherwise, set the
" original_dir variable so that the next time we try to toggle NERDTree, we open
" it at the original opened directory.
function! s:NERDTryOpenDir()
    if g:original_file == g:original_dir
        exe 'NERDTree' g:original_dir | :vertical resize 20
    endif
    let g:NERDLoaded = 1
endfunction


"""""""""""""""""
"    TOGGLE     "
"""""""""""""""""

" Open Project Viewer
" nnoremap <leader>pv :NERDTreeToggle
nnoremap <leader>pv :call g:NERDTreeTryToggle() <CR>

" Open NerdTree to the original directory (determined upon startup vim)
function! g:NERDTreeTryToggle()
    if exists('t:NERDTreeBufName')
        exe 'NERDTreeToggle'
    else
        exe 'NERDTree' g:original_dir
    endif
endfunction


"""""""""""""""""
"      UI       "
"""""""""""""""""

" Cleaner UI
let NERDTreeMinimalUI=1

" Little arrows!
let NERDTreeDirArrows=1


"""""""""""""""""
" PLUGIN CONFIG "
"""""""""""""""""

call g:SourceLocal('plugins/vim-nerdtree-syntax-highlight.vim')
