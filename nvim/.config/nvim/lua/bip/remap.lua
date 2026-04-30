vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- C-c to esc
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", "<Esc>")

-- save to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("i", "<leader>y", "\"+y")

