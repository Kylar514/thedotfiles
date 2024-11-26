return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  event = { "BufReadPre", "BufNewFile" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", { desc = "toggle markdown preview in browser" })
  end,
}
