" Set a global variable to get the original directory of the file vim was opened
" on, or the file itself if it was a directory.
autocmd VimEnter * exe s:CWDOnOpen()

function! s:CWDOnOpen()
    " Check if there are arguments at all
    if len(argv()) >= 1
        " Check for absolute paths
        if argv()[0][0] == '/'
            let g:original_file = argv()[0]
        else
            let g:original_file=getcwd(). "/". argv()[0]
        endif
    else
        let g:original_file=getcwd()
    endif

    if isdirectory(g:original_file)
        let g:original_dir = g:original_file
    else
        let g:original_dir = fnamemodify(g:original_file, ':h')
    endif

    exe 'cd' g:original_dir
endfunction
