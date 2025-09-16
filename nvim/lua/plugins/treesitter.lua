return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
		ensure_installed = {
			"bash",
			"c",
			"diff",
			"html",
			"javascript",
			"css",
			"jsdoc",
			"json",
			"jsonc",
			"lua",
			"luadoc",
			"luap",
			"markdown",
			"markdown_inline",
			"printf",
			"python",
			"cython",
			"query",
			"regex",
			"toml",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"xml",
			"yaml",
			"ninja",
			"rst",
			"rust",
		},
	},
	config = function(_, opts)
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.cython = {
			install_info = {
				url = "https://github.com/b0o/tree-sitter-cython",
				files = { "src/parser.c", "src/scanner.c" }, -- 👈 include scanner.c!
				branch = "master",
			},
			filetype = "cython",
		}
		require("nvim-treesitter.configs").setup(opts)
	end,
}
