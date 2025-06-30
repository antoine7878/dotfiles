return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>jj",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- This will provide type hinting with LuaLS
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
	-- init = function()
	-- -- If you want the formatexpr, here is the place to set it
	-- vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	-- end,
}
