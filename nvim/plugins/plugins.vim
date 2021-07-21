""""""""""""""""""
"     Plugins    "
""""""""""""""""""

call plug#begin(stdpath('data') . '/plugged')

" Themes
Plug 'morhetz/gruvbox'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Modifying 'surround' objects
Plug 'tpope/vim-surround'

" Comments made reasonable
Plug 'tpope/vim-commentary'


" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Git Side diffs
Plug 'airblade/vim-gitgutter'

" Highlighting for 't' and 'f' motions
Plug 'unblevable/quick-scope'


""""""""""""""""""
"Language Support"
""""""""""""""""""

" TOML Syntax
Plug 'cespare/vim-toml'

" Config Syntax
Plug 'mboughaba/i3config.vim'
Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}


""""""""""""""""""
"  FS/Undo Tree  "
""""""""""""""""""

" Undo tree visualizer
Plug 'mbbill/undotree'


" NERDTree + Aesthetic Plugins
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()


""""""""""""""""""
" Plugin Configs "
""""""""""""""""""

call g:SourceLocal('plugins/undotree.vim')
call g:SourceLocal('plugins/nerdtree.vim')

call g:SourceLocal('plugins/quick-scope.vim')
call g:SourceLocal('plugins/vim-airline.vim')
call g:SourceLocal('plugins/vim-gitgutter.vim')
call g:SourceLocal('plugins/fzf.vim')
