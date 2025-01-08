return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Import the treesitter plugin
    local treesitter = require("nvim-treesitter.configs")
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    --Parser config
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
    }

    -- Configure treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      folding = {
        enable = true, -- Enable folding
      },
      ensure_installed = {
        "blade",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "php",
        "php_only",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Set folding settings
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldenable = true
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
  end,
}
