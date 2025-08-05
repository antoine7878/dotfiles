return {
	{
		"nvim-tree/nvim-web-devicons",
	},
	{

		"akinsho/bufferline.nvim",
		version = "*",
		opts = {
			options = {
				mode = "buffers",
			},
		},
	},
	-- {
	-- 	"nvim-lualine/lualine.nvim",
	-- 	config = function()
	-- 		require("lualine").setup({}) end,
	-- },
	{
		'joshdick/onedark.vim',
		priority = 1000,
		config = function()
			vim.cmd('syntax on')
			vim.cmd('colorscheme onedark')
		end
	}
}
