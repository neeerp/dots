
"""""""""""""""""
"    RUNNERS    "
"""""""""""""""""
let test#python#runner = 'pytest'
let test#python#nose2#options = '-v'

"""""""""""""""""
"   STRATEGY    "
"""""""""""""""""
let test#strategy = 'neovim'

"""""""""""""""""
"   KEY BINDS   "
"""""""""""""""""
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
