"""""""""""""""""
" Nvim Defaults "
"""""""""""""""""

let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nvr'


"""""""""""""""""
"    Outputs    "
"""""""""""""""""

" We usually want PDF
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex'


let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

augroup VimtexCompileClear
    autocmd!
    autocmd User VimtexEventCompileSuccess silent exe '!latexmk -c'
augroup END


"""""""""""""""""
"    Viewer     "
"""""""""""""""""

let g:vimtex_view_general_viewer = 'evince'