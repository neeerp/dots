vim.opt.guicursor = ""
vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"

vim.opt.isfname:append("@-@")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.conceallevel = 0


-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true


-- Undo over swap
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Wrapping
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 4
vim.opt.wrap = false

-- IO
vim.opt.errorbells = false
vim.opt.updatetime = 50

vim.opt.hidden = true
vim.opt.splitbelow = true

vim.opt.clipboard = "unnamedplus"
