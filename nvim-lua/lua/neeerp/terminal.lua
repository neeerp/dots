function CreateTerm(termname)
  local pane = vim.fn.bufwinnr(termname)
  local buf = vim.fn.bufexists(termname)

  if pane > 0 then
    if pane == vim.fn.winnr() then
      vim.cmd("exe " .. pane .. " 'wincmd p'")
    else
      vim.cmd("exe " .. pane .. " 'wincmd w' | :startinsert")
    end
  elseif buf > 0 then
    -- Buffer is not in pane
    vim.cmd("exe 'botright split' | :resize 10 | :startinsert")
    vim.cmd("exe 'buffer " .. termname .. "'")
  else
    -- Buffer is not loaded; create one
    vim.cmd("exe 'botright split' | :resize 10")
    vim.cmd("terminal")
    vim.cmd("exe 'f ' \'" .. termname .. "\'")
    vim.cmd("exe 'startinsert'")
  end
end

vim.cmd [[
  nnoremap <C-space>j :lua CreateTerm("vim-term")<CR>
  tnoremap <C-space>t <C-\><C-N>:lua CreateTerm("vim-term")<CR>

  tnoremap <C-space>h <C-\><C-N>:wincmd h<CR>
  tnoremap <C-space>j <C-\><C-N>:wincmd j<CR>
  tnoremap <C-space>k <C-\><C-N>:wincmd k<CR>
  tnoremap <C-space>l <C-\><C-N>:wincmd l<CR>
  tnoremap <C-space>p <C-\><C-N>:wincmd p<CR>
  tnoremap <C-space><space> <C-\><C-N>

]]

