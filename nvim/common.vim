""""""""""""""""""
"     Folds      "
""""""""""""""""""

" This breaks the indent line plugin when set to `syntax`...
set foldmethod=manual
set foldlevel=99

""""""""""""""""""
"   Indentation  "
""""""""""""""""""

" 4 space tabs; converted to spaces
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab

" Context/Syntax dependent auto indentation
set smartindent

" File Specific
autocmd Filetype html setlocal ts=2 sw=2 expandtab


""""""""""""""""""
"       IO       "
""""""""""""""""""

" Allow use of mouse
set mouse=a

" Disable annoying sounds and flashing
set noerrorbells

" Message Display
set shortmess+=c

set cmdheight=1
set display-=msgsep

" Snappy Popups
set updatetime=300

" Allow Hidden Buffers (so that they don't close when switching between buffers)
set hidden

" New horizontal splits spawn below instead
set splitbelow


""""""""""""""""""
"   Numbering    "
""""""""""""""""""

" Hybrid Absolute/Relative Line Numbering
set number relativenumber

" Show signcolumn (Warnings/errors on the side)
set signcolumn=yes

" Make the Sign Column more tolerable
autocmd vimenter * highlight clear SignColumn


""""""""""""""""""
"     Search     "
""""""""""""""""""

" Incremental Search with Contextual Case Sensitivity
set incsearch
set smartcase ignorecase


""""""""""""""""""
"     Syntax     "
""""""""""""""""""

" Syntax Highlighting
syntax on


""""""""""""""""""
"    Wrapping    "
""""""""""""""""""

" Enable Line breaks at 80 chars
set textwidth=80 
set formatoptions+=t formatoptions-=l

" Keep a buffer of 4 rows/cols around cursor
set scrolloff=4 sidescrolloff=4
set nowrap

" Override Width for certain file types (e.g. config files)
autocmd bufreadpre config setlocal textwidth=0 

