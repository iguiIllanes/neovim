-- On exit changes cursor from vertical bar to vertical line
vim.cmd([[
  augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver25-iCursor
  augroup END
]])
