vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  desc = 'Set tab width to 2 for these file types',
  pattern = {
    '*.css', '*.html', '*.json',
    '*.js', '*.mjs', '*.cjs', '*.jsx',
    '*.ts', '*.mts', '*.cts', '*.tsx',
    '*.lua',
  },
  callback = function(_args)
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end
})
