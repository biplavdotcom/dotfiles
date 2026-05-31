vim.keymap.set("n", "-", "<cmd> lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" } )

vim.keymap.set("n", "<leader>-", function()
    MiniFiles.open(vim.api.nvim_buf_get_name(0), False)
    MiniFiles.reveal_cwd()
end, { desc = "toggle mini file explorer in current directory" }
)

vim.keymap.set("n", "<leader>pk", function() MiniExtra.pickers.keymaps() end, { desc = "show keymaps" } )
