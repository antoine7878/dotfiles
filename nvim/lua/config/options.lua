vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10

vim.o.termguicolors = true
vim.o.undofile = true
vim.o.showmode = false
vim.o.wrap = false

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.breakindent = true
vim.o.expandtab = false

vim.o.cmdheight = 0

vim.o.ignorecase = true
vim.o.smartcase = true

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.g.autoformat = false
vim.g.have_nerd_font = true

vim.deprecate = function() end

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
