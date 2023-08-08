return {
	-- Example configuration:
	-- <lsp_name> = {
	-- 	-- check lsp documentattion for available settings
	-- },
	--
	-- Alternatively, leave the table empty and use the default settings
	-- <lsp_name> = {},

	lua_ls = { -- Lua
		Lua = {
			-- make the language server recognize "vim" as global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of Neovim runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},

	gopls = { -- Golang
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
		},
	},

	jsonls = {}, -- JSON

	emmet_ls = { -- emmet
		filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
		init_options = {
			html = {
				options = {
					["bem.enabled"] = true,
				},
			},
		},
	},
}
