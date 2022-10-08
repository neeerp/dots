" Set the leader key
let mapleader = " "

"""""""""""""""""
"     Panes     "
"""""""""""""""""

" Resize binds
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>+ :resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>_ :resize -5<CR>

" Switching Panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Switching from Terminal mode
tnoremap <C-space>h <C-\><C-N>:wincmd h<CR>
tnoremap <C-space>j <C-\><C-N>:wincmd j<CR>
tnoremap <C-space>k <C-\><C-N>:wincmd k<CR>
tnoremap <C-space>l <C-\><C-N>:wincmd l<CR>
tnoremap <C-space>p <C-\><C-N>:wincmd p<CR>
tnoremap <C-space><space> <C-\><C-N>



"""""""""""""""""
"     Popup     "
"""""""""""""""""

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
