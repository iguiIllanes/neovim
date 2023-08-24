return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"jose-elias-alvarez/null-ls.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jay-babu/mason-null-ls.nvim",
		"nvimdev/lspsaga.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- *******************************
		-- LSPCONFIG CONFIGURATION
		-- *******************************
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap

		local on_attach = function(_, bufnr) -- used to set keybinds for lsp servers (asign to every lsp server config)
			-- keybind options
			local opts = { noremap = true, silent = true, buffer = bufnr }

			-- set keybinds
			keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
			keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
			keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
			keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
			keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
			keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
			keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
			keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
			keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
			keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
			keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
			keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
		end

		-- *******************************
		-- CMP_NVIM_LSP CONFIGURATION
		-- *******************************
		local capabilities = cmp_nvim_lsp.default_capabilities() -- used to enable autocompletion (asign to every lsp server config)
		capabilities.offsetEncoding = { "utf-16" }

		-- *******************************
		-- LSP SAGA CONFIGURATION
		-- *******************************
		local saga = require("lspsaga")
		-- saga.init_lsp_saga({
		-- 	error_sign = "",
		-- 	warn_sign = "",
		-- 	hint_sign = "",
		-- 	infor_sign = "",
		-- 	border_style = "round",
		-- })
		saga.setup({
			ui = {
				code_action= "",
				-- enable nvim-web-devicons
				devicon = true,
			},

			-- keybinds for navigation in lspsaga window
			move_in_saga = { prev = "<C-k>", next = "<C-j>" },
			-- use enter to open file with finder
			finder = {
				keys = {
					toggle_or_open = "<CR>",
				},
			},
			-- use enter to open file with definition preview
			definition = {
				keys = {
					edit = "<CR>",
				},
			},
		})

		-- *******************************
		-- MASON.NVIM CONFIGURATION
		-- *******************************
		local mason = require("mason")
		mason.setup()

		-- *******************************
		-- MASON_LSPCONFIG CONFIGURATION
		-- *******************************
		local mason_lspconfig = require("mason-lspconfig")

		local servers = require("plugins.lsp.servers")
		mason_lspconfig.setup({
			ensure_installed = vim.tbl_keys(servers),
		})

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					settings = servers[server_name],
				})
			end,

			-- function(server_name)
			-- 	lspconfig[server_name].setup({
			-- 		capabilities = capabilities,
			-- 		on_attach = on_attach,
			-- 		settings = servers[server_name],
			-- 	})
			-- end,
		})

		-- *******************************
		-- MASON_NULL_LS CONFIGURATION
		-- *******************************
		local null_ls = require("null-ls")
		local mason_null_ls = require("mason-null-ls")

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		local formatters_and_linters = require("plugins.lsp.formatters_and_linters")
		mason_null_ls.setup({
			ensure_installed = formatters_and_linters.ensure_installed,
			handlers = {},
		})

		-- *******************************
		-- NULL_LS CONFIGURATION
		-- *******************************
		null_ls.setup({
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									--  only use null-ls for formatting instead of lsp server
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,

			-- *******************************
			-- CUSTOM NULL_LS CONFIGURATION
			-- *******************************
			-- everything that is not supported by mason should be added here
			sources = formatters_and_linters.sources,
		})

		-- *******************************
		-- CUSTOM LSP SERVER CONFIGURATION
		-- *******************************
		-- You can add custom configuration to lsp servers here that cant be added through Mason
		-- Example:
		--
		-- lspconfig.tsserver.setup({ -- Alternatively: lspconfig["tsserver"].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- 	settings = {
		-- 		-- custom configuration from lsp server documentation
		-- 	},
		-- })
	end,
}
