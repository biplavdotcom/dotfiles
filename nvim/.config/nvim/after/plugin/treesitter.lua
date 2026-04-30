require('nvim-treesitter').setup{
    highlight = { enable = true },

    indent = { enable = true },

    folds = { enable = true },

    ensure_installed = {
      "python",
      "javascript",
      "lua",
      "c",
      "rust"
    },

    sync_install = true,

    auto_install = true,

}

