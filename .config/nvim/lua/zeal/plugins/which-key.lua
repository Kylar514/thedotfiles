return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
    local wk = require("which-key")
    wk.add({
      { "<leader>", group = "Leader/space" },
      { "<leader>b", group = "Buffer commands" },
      { "<leader>c", group = "Code actions" },
      { "<leader>e", group = "File tree" },
      { "<leader>f", group = "Telescope" },
      { "<leader>l", group = "Lazygit" },
      { "<leader>m", group = "Formater" },
      { "<leader>n", group = "Highlighting" },
      { "<leader>r", group = "LSP options" },
      { "<leader>s", group = "Window management" },
      { "<leader>t", group = "Tab management" },
      { "<leader>w", group = "Session management" },
      { "<leader>x", group = "Linting options" },
    })
  end,
  opts = {},
}
