return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.files = vim.tbl_deep_extend("force", opts.files or {}, {
      fd_opts = "--exclude '.*'",
    })
    return opts
  end,
  keys = {
    { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
  },
}
