return {
  "MeanderingProgrammer/render-markdown.nvim",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "echasnovski/mini.nvim",
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
}
