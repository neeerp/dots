-- Move visual selection around, obeying indentation!
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When appending line below, leave the cursor in place.
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without wiping paste register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Resize
vim.keymap.set("n", "<leader>=", ":vertical resize +5<CR>")
vim.keymap.set("n", "<leader>+", ":resize +5<CR>")
vim.keymap.set("n", "<leader>-", ":vertical resize -5<CR>")
vim.keymap.set("n", "<leader>_", ":resize -5<CR>")

-- Panes
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

