-- Options are automatically loaded before lazy.nvim startup
vim.opt.cursorline = false

vim.filetype.add({
  extension = {
    pyx = "cython",
    pxd = "cython",
    pxi = "cython",
  },
})

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
