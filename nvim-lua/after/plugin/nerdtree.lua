vim.keymap.set("n", "<leader>pv", ":NERDTreeToggle<CR>")

vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeDirArrows = 1
vim.g.NERDTreeHijackNetrw = 0
vim.g.NERDTreeShowHidden = 1

local groupId = vim.api.nvim_create_augroup('NERDTreeHijackNetrw', { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    SetCWD()
    hijack()
  end,
  group = groupId
})

function SetCWD()
  if #(vim.fn.argv()) >= 1 then
    if string.sub(vim.fn.argv()[1], 1, 1) == '/' then
      vim.g.original_file = vim.fn.argv()[1]
    else
      vim.g.original_file = vim.fn.getcwd() .. "/" .. vim.fn.argv()[1]
    end
  else
    vim.g.original_file = vim.fn.getcwd()
  end

  if vim.fn.isdirectory(vim.g.original_file) ~= 0 then
    vim.g.original_dir = vim.g.original_file
  else
    vim.g.original_dir = vim.fn.fnamemodify(vim.g.original_file, ":h")
  end

  vim.api.nvim_command("cd " .. vim.g.original_dir)
end

function hijack()
  if vim.g.original_file == vim.g.original_dir then
    vim.api.nvim_command("NERDTree " .. vim.g.original_dir .. " | :vertical resize 20")
  end
  vim.g.NERDLoaded = 1
end
