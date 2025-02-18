return {
	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		keys = { "<F1>" },
		opts = {
			default_map = true, -- Default mapping <F1> in normal mode.
			auto_update = false, -- Update header when saving.
			user = "ale-tell", -- Your user.
			mail = "ale-tell@42student.fr", -- Your mail.
			-- add other options.
		},
		config = function(_, opts)
			require("42header").setup(opts)
		end,
	},
}
