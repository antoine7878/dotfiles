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
			ocaml = { "ocamlformat" },
			python = { "ruff", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
}
