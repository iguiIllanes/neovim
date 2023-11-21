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

	marksman = {
		filetypes = { "markdown", ".md" },
	}, -- Markdown

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

	html = {}, -- HTML

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

	tsserver = { -- TypeScript
		init_options = {
			preferences = {
				disableSuggestions = true,
			},
		},
		-- commands = {
		-- 	OrganizeImports = {
		-- 		function()
		-- 			local params = {
		-- 				command = "_typescript.organizeImports",
		-- 				arguments = { vim.api.nvim_buf_get_name(0) },
		-- 				title = "",
		-- 			}
		-- 			vim.lsp.buf.execute_command(params)
		-- 		end,
		-- 		description = "Organize Imports",
		-- 	},
		-- },
	},

	eslint = {}, -- ESLint
}
