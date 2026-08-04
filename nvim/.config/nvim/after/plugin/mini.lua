vim.keymap.set("n", "-", "<cmd> lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })

vim.keymap.set("n", "<leader>xx", function() MiniExtra.pickers.diagnostics() end, { desc = "show diagnostics" })
vim.keymap.set("n", "<leader>mk", function() MiniExtra.pickers.keymaps() end, { desc = "show keymaps" })
vim.keymap.set("n", "<leader>mb", function() MiniExtra.pickers.git_branches({ scope = 'local' }) end)

vim.keymap.set("n", "<leader>-", function()
    MiniFiles.open(vim.api.nvim_buf_get_name(0), False)
    MiniFiles.reveal_cwd()
end, { desc = "toggle mini file explorer in current directory" }
)
