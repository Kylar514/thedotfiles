vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>a", "<cmd>Alpha<CR>", { desc = "Home Dashboard" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>>", "<c-w>5>", { desc = "Extend window to the right" })
keymap.set("n", "<leader><", "<c-w>5<", { desc = "Decrease size of window" })
keymap.set("n", "<leader>+", "<c-w>5+", { desc = "Extend window" })
keymap.set("n", "<leader>-", "<c-w>5-", { desc = "Decrease size of window" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew<CR>", { desc = "Open current buffer in new tab" })

keymap.set({ "n" }, "<leader>bl", ":ls<CR>", { desc = "List buffers" })
keymap.set({ "n" }, "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
keymap.set({ "n" }, "<leader>bp", ":bprev<CR>", { desc = "Previous buffer" })
keymap.set({ "n" }, "<leader>bx", ":bdelete<CR>", { desc = "Close current buffer" })
keymap.set({ "n" }, "<leader>bw", ":bwipeout<CR>", { desc = "Wipe out current buffer" })
