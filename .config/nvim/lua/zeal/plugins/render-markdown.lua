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
  opts = {
    checkbox = {
      enabled = true,
      position = "inline",
      unchecked = {
        raw = "[ ]",
        icon = "󰄱  Todo",
        highlight = "RenderMarkdownUnchecked",
        scope_highlight = nil,
      },
      checked = {
        icon = "󰱒 󰚜 Done",
        highlight = "RenderMarkdownChecked",
      },
      custom = {
        todo = {
          raw = "[~]",
          rendered = "󰄱 󰥔 In Progress",
          highlight = "RenderMarkdownTodo",
          scope_highlight = nil,
        },
        delay = {
          raw = "[!]",
          rendered = "󰄱 󰲼 Delayed",
          highlight = "DiagnosticWarn",
          scope_highlight = nil,
        },
        lowprio = {
          raw = "[>]",
          rendered = "󰄱  Low Priority",
          highlight = "DiagnosticOk",
          scope_highlight = nil,
        },
        highprio = {
          raw = "[<]",
          rendered = "󰄱  High Priority",
          highlight = "DiagnosticError",
          scope_highlight = nil,
        },
        cancelled = {
          raw = "[-]",
          rendered = "󰰰 󰜺 Cancelled",
          highlight = "DiffRemoved",
          scope_highlight = nil,
        },
      },
    },
  },
}
