require("config.lazy")
require("config.options")
require("config.autocmd")
require("config.keymap")


local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.cython = {
	install_info = {
		url = "https://github.com/b0o/tree-sitter-cython",
		files = { "src/parser.c", "src/scanner.c" }, -- 👈 include scanner.c!
		branch = "master",
	},
	filetype = "cython",
}


vim.filetype.add {
	extension = {
		pyx = "cython",
		pxd = "cython",
		pxi = "cython",
	},
}
