" Toggleable terminal at the bottom of the screen
nnoremap <C-space>j :call CreateTerm("vim-term")<CR>
tnoremap <C-space>t <C-\><C-N>:call CreateTerm("vim-term")<CR>

function! g:CreateTerm(termname)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        " Pane is visible
        if pane == winnr()
            :exe pane . "wincmd p"
        else
            :exe pane . "wincmd w" | :startinsert
        endif
    elseif buf > 0
        " Buffer is not in pane
        :exe "botright split" | :resize 10 | :startinsert
        :exe "buffer " . a:termname
    else
        " Buffer is not loaded; create one
        :exe "botright split" | :resize 10
        :terminal
        :exe "f " a:termname
        :exe "startinsert"
    endif
endfunction
