vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- spam to indent
vim.keymap.set("v", "<", "<gv", opts) 
vim.keymap.set("v", ">", ">gv", opts) 

-- clears the search highlight on ctrl+c
vim.keymap.set("n", "<C-c>", ":nohl<CR>", {desc = "Clear serach highlights on ctrl+c", silent = true})
