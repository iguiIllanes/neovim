return {
	ensure_installed = {
		"lua_ls", -- Lua
	},

	settings = {
		-- Example configuration:
		-- <lsp_name> = {
		-- 	-- check lsp documentattion for available settings
		-- },

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
	},
}
