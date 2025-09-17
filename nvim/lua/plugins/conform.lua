return {
  "stevearc/conform.nvim",
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
}
