return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, --move to prev result
            ["<C-j>"] = actions.move_selection_next, --move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, --add file to quick fix list
            ["<C-h>"] = require("telescope.builtin").hidden_files, --allows hidden files to be viewed
          },
        },
      },
    })

    telescope.load_extension("fzf")

    --set keymaps

    local keymap = vim.keymap

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set(
      "n",
      "<leader>fa",
      "<cmd>lua require('telescope.builtin').find_file<cr>",
      { desc = "Fuzzy find files in cwd" }
    )
    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find files in buffer" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
  end,
}
