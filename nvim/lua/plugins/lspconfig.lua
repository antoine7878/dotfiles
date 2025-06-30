return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "pyright", "ruff" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.ruff.setup({})
			lspconfig.pyright.setup({})
		end,
		-- opts = function(_, opts)
		-- 	local servers = { "pyright", "basedpyright", "ruff", "ruff_lsp" }
		-- 	for _, server in ipairs(servers) do
		-- 		opts.servers[server] = opts.servers[server] or {}
		-- 		opts.servers[server].enabled = true
		-- 	end
		-- end,
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		cmd = "LazyDev",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				{ path = "LazyVim", words = { "LazyVim" } },
				{ path = "snacks.nvim", words = { "Snacks" } },
				{ path = "lazy.nvim", words = { "LazyVim" } },
			},
		},
	},
}
