if !empty($DISPLAY)
    set termguicolors
    set t_Co=256
endif

set background=dark

" Transparent Backgrounds!
let g:gruvbox_transparent_bg=1
let g:gruvbox_selection_bg=0
let g:gruvbox_cursor_column=0

autocmd vimenter * hi Normal guibg=NONE
autocmd vimenter * hi LineNr guibg=NONE
autocmd vimenter * hi SignColumn guibg=NONE

" Airline Theme
let g:airline_theme='gruvbox'
