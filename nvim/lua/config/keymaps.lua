-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- map('n', '<F3>', ':!make test<CR>', { noremap = true, silent = true })
-- map('n', '<Leader>r', ':!make re && make test<CR>', { noremap = true, silent = true })
map({ "n", "v" }, "<leader>jj", function()
	LazyVim.format({ force = true })
end, { desc = "Format" })
