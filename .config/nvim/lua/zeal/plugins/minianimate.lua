return {
  "echasnovski/mini.animate",
  version = false,
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local animate = require("mini.animate")

    animate.setup({
      cursor = {
        enable = true,
        timing = function()
          return 4
        end,
        path = animate.gen_path.line(),
      },
      scroll = {
        enable = true,
        timing = function()
          return 2.5
        end,
      },
      resize = {
        enable = true,
        timing = function()
          return 0.15
        end,
      },
    })
  end,
}
