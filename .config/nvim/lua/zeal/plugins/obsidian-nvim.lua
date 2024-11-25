return {
  "epwalsh/obsidian.nvim",
  event = { "BufReadPre ~/Nextcloud/Obsian vault/", "BufNewFile ~/Nextcloud/Obsian vault/" },
  version = "*",
  lazy = true,
  ft = "markdown",
  disable_frontmatter = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    ui = {
      enable = false,
    },
    workspaces = {
      {
        name = "personal",
        path = "~/Nextcloud/Obisian vault/",
      },
      {
        name = "work",
        path = "~/Nextcloud/Obisian vault/",
      },
    },
  },
}
