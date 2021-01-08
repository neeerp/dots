"""""""""""""""""
"   KEY BINDS   "
"""""""""""""""""

" Toggle on/off Markdown Preview
noremap <leader>mp :call g:MKDPToggle() <CR>

" Make Toggle Function always available (couldn't do this with <Plug> for some
" reason)
function g:MKDPToggle()
    if &filetype == 'markdown'
        call mkdp#util#toggle_preview()
    endif
endfunction
