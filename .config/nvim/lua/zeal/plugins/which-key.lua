return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
    local wk = require("which-key")
    wk.register({
      ["<leader>"] = {
        name = "Leader/space",
        b = { name = "Buffer commands" },
        c = { name = "Code actions" },
        e = { name = "File tree" },
        f = { name = "Telescope" },
        l = { name = "Lazygit" },
        m = { name = "Formater" },
        n = { name = "Highlighting" },
        r = { name = "LSP options" },
        s = { name = "Window management" },
        t = { name = "Tab management" },
        w = { name = "Session management" },
        x = { name = "Linting options" },
      },
    })
    -- local mappings = {
    --   f = { name = "Telescope" },
    -- }
  end,
  opts = {},
}
