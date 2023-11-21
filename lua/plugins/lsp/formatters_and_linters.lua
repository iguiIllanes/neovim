local formatting = require("null-ls").builtins.formatting
local diagnostics = require("null-ls").builtins.diagnostics

return {
	ensure_installed = {
		"stylua", -- Lua
		"gofumpt", -- Go
		"golines", -- Go
		"goimports-reviser", -- Go
		"prettier", -- JavaScript, TypeScript, HTML, CSS
		"clang-format", -- C, C++, Objective-C, Objective-C++

		-- "tsserver", -- TypeScript
		-- "html", -- HTML
		-- "cssls", -- CSS
		-- "tailwindcss", -- TailwindCSS
		-- "gopls", -- Go
	},

	sources = {
		-- Examples:
		-- formatting.stylua, -- formatter example
		-- diagnostics.eslint_d, -- linter example
		diagnostics.eslint,
		formatting.prettier,
	},
}
