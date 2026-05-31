vim.pack.add{
    -- Dependencies
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },

    { src = 'https://github.com/nvim-telescope/telescope.nvim', name = 'telescope' },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = 'treesitter'},
    { src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2", name = 'primagen/harpoon2' },
    { src = "https://github.com/tpope/vim-fugitive", name = 'fugitive'},
    { src = "https://github.com/mbbill/undotree", name = 'undotree' },
    { src = "https://github.com/nvim-lualine/lualine.nvim", name = 'lualine'},
    { src = "https://github.com/rebelot/kanagawa.nvim", name = 'kanagawa theme'},

    -- MINI
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" }
    
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

-- Kanagawa theme set
vim.cmd("colorscheme kanagawa-wave")


-- Mini Setups

-- mini files
local MiniFiles = require("mini.files")

MiniFiles.setup()

-- mini cmdline
require("mini.cmdline").setup({
    autocorrect = { enable = false }
})

-- mini surround
require("mini.surround").setup({ })

-- mini notify
require("mini.notify").setup({
    content = {
        format = function(notif)
            return notif.msg
        end,
    }
})

-- mini picker
local MiniPick = require("mini.pick")
MiniPick.setup()

-- mini extras
local MiniExtra = require("mini.extra")
MiniExtra.setup()

-- Mini completions
local MiniCompletion = require("mini.completion")
MiniCompletion.setup({
    lsp_completion = {
        auto_setup = true
    }
})

-- mini snippets
local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
    snippets = {
        MiniSnippets.gen_loader.from_lang(), -- load friendly snippets automatically
    },
})
MiniSnippets.start_lsp_server( { match = false } ) -- start the snippet

-- treesitter
require("treesitter")

-- lsp
require("lsp")
