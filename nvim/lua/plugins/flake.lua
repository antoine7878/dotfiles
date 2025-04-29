return {
  "stevearc/conform.nvim",
  opt = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      python = { "autoflake" },
    },
  },
}
