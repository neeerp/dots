"""""""""""""""""
" Undo Dir/Swap "
"""""""""""""""""

" Disable Backups (i.e. before edit) and Swap (i.e. during edit)
set nobackup noswapfile

" Use Undo instead
set undodir=~/.vim/undodir
set undofile


"""""""""""""""""
"     Views     "
"""""""""""""""""

" Persist Folds after closing buffer
autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NOTE: For the root user, you need to make sure that any associated directories
" have 0700 perms. For undo, backup, swap, and views, that means...
" $ sudo chmod 0700 /root/.local/.vim/undodir
" $ sudo chmod 0700 /root/.local/share/nvim/backup
" $ sudo chmod 0700 /root/.local/share/nvim/swap
" $ sudo chmod 0700 /root/.local/share/nvim/view
"
" If you forget to do this, you'll bork your root user's nvim on the files you
" open. Even after fixing permissions, you might want to clear those directories
" (especially `view`) to make things play nice again.
