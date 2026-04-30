vim.pack.add{
    -- Dependencies
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },

    { src = 'https://github.com/nvim-telescope/telescope.nvim', name = 'telescope' },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = 'treesitter'},
    { src = "https://github.com/nvim-neo-tree/neo-tree.nvim", name = 'neo-tree'} ,
    { src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2", name = 'primagen/harpoon2' },
    { src = "https://github.com/tpope/vim-fugitive", name = 'fugitive'},
    { src = "https://github.com/mbbill/undotree", name = 'undotree' },
    { src = "https://github.com/nvim-lualine/lualine.nvim", name = 'lualine'},
    { src = "https://github.com/rebelot/kanagawa.nvim", name = 'kanagawa theme'},

    -- LSP
    { src = 'https://github.com/neovim/nvim-lspconfig', name = 'nvim lspconfig'},
    { src = 'https://github.com/mason-org/mason.nvim', name = 'mason'},
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim', name = 'mason lspconfig' },
    { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim', name = 'mason tool installer' },
    { src = 'https://github.com/L3MON4D3/LuaSnip', name = 'LuaSnip'},
    { src = 'https://github.com/rafamadriz/friendly-snippets', name = 'friendly snippets'},
    { src = 'https://github.com/saghen/blink.cmp', version = 'v1', name = 'blink cmp'},
}

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.pack.update()
--   end,
-- })

-- Lualine
require('lualine').setup{
    options = { theme = 'everforest' }
}

-- Mason
require("mason").setup()

-- Mason lspconfig
require("mason-lspconfig").setup()

-- Mason Tool Installer
require("mason-tool-installer").setup ({

    ensure_installed = {
	 'lua_ls', 'stylua',
    },

})

-- Kanagawa theme set
vim.cmd("colorscheme kanagawa-wave")
