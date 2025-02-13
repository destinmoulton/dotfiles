
-- Configure the pencil plugin
vim.g["pencil#wrapModeDefault"] = "soft"
vim.api.nvim_create_augroup('pencil', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown', 'mkd', 'text' },
  callback = function()
    vim.fn['pencil#init']()
  end,
  group = 'pencil',
})
