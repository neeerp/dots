require("neeerp.set")
require("neeerp.remap")
require("neeerp.ft")
require("neeerp.terminal")
require("neeerp.quickscope")

vim.api.nvim_command("au VimEnter * sil! au! FileExplorer *")
vim.api.nvim_command("au BufEnter * if (winnr('$') == 1 && isdirectory(expand('%')) && exists('g:NERDLoaded')) | q | endif")
