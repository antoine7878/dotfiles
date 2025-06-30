return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	keys = {
		{ "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
		{ "<leader>/", "<cmd>FzfLua live_grep<cr>", desc = "Grep (Root Dir)" },
		{ "<leader><space>", "<cmd>FzfLua files<cr>", desc = "Find Files (Root Dir)" },
	},
	config = function() end,
}
