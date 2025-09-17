-- Options are automatically loaded before lazy.nvim startup
vim.opt.cursorline = false

vim.filetype.add({
  extension = {
    pyx = "cython",
    pxd = "cython",
    pxi = "cython",
  },
})
