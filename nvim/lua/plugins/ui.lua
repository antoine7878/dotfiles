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
	-- 		require("lualine").setup({})
	-- 	end,
	-- },
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "deep",
			})
			require("onedark").load()
		end,
	},
}
