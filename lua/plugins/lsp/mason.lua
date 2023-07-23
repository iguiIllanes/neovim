-- Portable package manager for Neovim that runs everywhere Neovim runs.
-- Easily install and manage LSP servers, DAP servers, linters, and formatters.
-- mason.nvim
-- https://github.com/williamboman/mason.nvim
return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_null_ls = require("mason-null-ls")

		mason.setup()

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls", -- Lua
				"tsserver", -- TypeScript
				"html", -- HTML
				"cssls", -- CSS
				"tailwindcss", -- TailwindCSS
				"gopls", -- Go
			},
		})

		mason_null_ls.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
