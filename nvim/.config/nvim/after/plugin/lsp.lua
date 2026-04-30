vim.lsp.config('lua_ls', {
    settings = {
	Lua = {
	    runtime = {
		version = "LuaJIT",
	    },

	    diagnostics = {
		globals = { "vim", "require" },
	    },
	    workspace = {
		library = vim.api.nvim_get_runtime_file("", true),
	    },
	    telemetry = {
		enable = false,
	    },

	},
    }
})

require("luasnip.loaders.from_vscode").lazy_load()

require("blink.cmp").setup({
    signature = { enabled = true,  },
    completion = {
	documentation = {
	    auto_show = true,
	    auto_show_delay_ms = 500,

	},
	menu = {
	    auto_show = true,
	}
    }
})
