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

augroup VimtexCompileClear
    autocmd!
    autocmd User VimtexEventCompileSuccess,VimtexEventCompileFailed silent exe '!latexmk -c'
augroup END


"""""""""""""""""
"    Viewer     "
"""""""""""""""""

let g:vimtex_view_general_viewer = 'evince'
