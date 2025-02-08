return {
	"ibhagwan/fzf-lua",
	keys = {
		{ "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
		{ "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
	},
}
