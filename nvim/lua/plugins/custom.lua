return {
	"neovim/nvim-lspconfig",
	config = function()
		require "plugins.configs.lspconfig"
		require "custom.configs.lspconfig"
	end,
	"williamboman/mason.nvim",
	opts = {
		ensur_installed = {
			"clangd"
		}
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "cpp" } },
	}
}

