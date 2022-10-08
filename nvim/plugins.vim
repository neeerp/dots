""""""""""""""""""
"     Plugins    "
""""""""""""""""""

call plug#begin(stdpath('data') . '/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git Side diffs
Plug 'airblade/vim-gitgutter'

" Finally some decent indent guides
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

" Highlighting for 't' and 'f' motions
Plug 'unblevable/quick-scope'

""""""""""""""""""
"Language Support"
""""""""""""""""""

" Elixir
Plug 'elixir-editors/vim-elixir'

" TOML Syntax
Plug 'cespare/vim-toml'

" Rust Syntax
Plug 'rust-lang/rust.vim'


" Config Syntax
Plug 'mboughaba/i3config.vim'
Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}


" Testing out native LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Plug 'nvim-lua/lsp_extensions.nvim'

" Heavier plugins; don't run as root
if (g:IsRoot() == 0)
    """"""""""""""""""
    "Language Support"
    """"""""""""""""""

    " Render .MD files
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    " Render LaTeX
    Plug 'lervag/vimtex'


    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    " Plug 'simrat39/rust-tools.nvim'


    """"""""""""""""""
    "  FS/Undo Tree  "
    """"""""""""""""""

    " Undo tree visualizer
    Plug 'mbbill/undotree'


    " NERDTree + Aesthetic Plugins
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'

    """"""""""""""""""
    "    Testing     "
    """"""""""""""""""
    Plug 'vim-test/vim-test'

endif
call plug#end()




""""""""""""""""""
" Plugin Configs "
""""""""""""""""""

if (g:IsRoot() == 0)
    call g:SourceLocal('plugins/coc/coc.vim')
    call g:SourceLocal('plugins/undotree.vim')
    call g:SourceLocal('plugins/nerdtree.vim')
    call g:SourceLocal('plugins/markdown-preview.vim')
    call g:SourceLocal('plugins/vimtex.vim')
    call g:SourceLocal('plugins/vim-test.vim')
endif


call g:SourceLocal('plugins/quick-scope.vim')
call g:SourceLocal('plugins/vim-airline.vim')
call g:SourceLocal('plugins/vim-gitgutter.vim')
call g:SourceLocal('plugins/indentLine.vim')
call g:SourceLocal('plugins/fzf.vim')

" " use <Tab> as trigger keys
" imap <Tab> <Plug>(completion_smart_tab)
" imap <S-Tab> <Plug>(completion_smart_s_tab)

" " Enable type inlay hints
" autocmd CursorHold,CursorHoldI *.rs :lua require'lsp_extensions'.inlay_hints{ only_current_line = true }
