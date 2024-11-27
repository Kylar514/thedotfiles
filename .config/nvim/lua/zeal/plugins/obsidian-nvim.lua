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
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
        [">"] = { char = "", hl_group = "ObsidianRightArrow" },
        ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
        ["!"] = { char = "", hl_group = "ObsidianImportant" },
        ["<"] = { char = "", hl_group = "ObsidianImportant" },
        ["-"] = { char = "", hl_group = "ObsidianImportant" },
      },
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
