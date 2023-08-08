--
--  EDITOR PLUGINS
--
return {
	-- import colorschemes
	require("plugins.colorscheme"),

	-- Session manager
	-- Persistence.nvim
	-- https://github.com/folke/persistence.nvim
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
	},

	-- Notifications
	-- nvim-notify
	-- https://github.com/rcarriga/nvim-notify
	{
		"rcarriga/nvim-notify",
		config = function()
			local notify = require("notify")
			notify.setup({
				background_colour = "#000000",
			})
			vim.notify = notify
		end,
	},

	-- HEX colors highlighting
	-- nvim-colorizer.lua
	-- https://github.com/norcalli/nvim-colorizer.lua
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},

	-- Adds highlighting to comments
	-- todo-comments.nvim
	-- https://github.com/folke/todo-comments.nvim
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup()
		end,
	},

	-- Tabpage integration
	-- bufferline.nvim
	-- https://github.com/akinsho/bufferline.nvim
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup()
		end,
	},

	-- Buffer delete (close tabs)
	-- nvim-bufdel
	-- https://github.com/ojroques/nvim-bufdel
	{ "ojroques/nvim-bufdel" },

	-- automatically adjust 'shiftwidth' and 'expandtab'
	-- based on the current file
	-- nvim-sleuth
	-- https://github.com/tpope/vim-sleuth
	{ "tpope/vim-sleuth" },

	-- Adds navigation to windows and tmux integration
	-- Navigator.nvim
	-- https://github.com/numToStr/Navigator.nvim
	{
		"numToStr/Navigator.nvim",
		config = function()
			require("Navigator").setup()
		end,
	},

	-- Sorroundings and replacements
	-- vim-surround
	-- https://github.com/tpope/vim-surround
	{ "tpope/vim-surround" },
	-- ReplaceWithRegister
	-- https://github.com/vim-scripts/ReplaceWithRegister
	{ "vim-scripts/ReplaceWithRegister" },

	-- Autoclosing
	-- nvim-autopairs
	-- https://github.com/windwp/nvim-autopairs
	{
		"windwp/nvim-autopairs",
		dependencies = "hrsh7th/nvim-cmp",
		config = function()
			require("nvim-autopairs").setup()

			-- make nvim-autopairs and nvim-cmp work together
			require("cmp").event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
		end,
	},

	-- Smooth scrolling
	-- neoscroll.nvim
	-- https://github.com/karb94/neoscroll.nvim
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
	},

	-- Comments
	-- Comment.nvim
	-- https://github.com/numToStr/Comment.nvim
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- File explorer
	-- nvim-tree.lua
	-- https://github.com/nvim-tree/nvim-tree.lua
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			-- recommended settings from documentation
			vim.g.loaded = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup({
				actions = {
					open_file = {
						window_picker = {
							enable = false,
						},
					},
				},
			})
		end,
	},

	-- Indent lines
	-- lukas-reineke/indent-blankline.nvim
	-- https://github.com/lukas-reineke/indent-blankline.nvim
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPre", -- makes sure indent-blankline is loaded after dashboard.nvim
		config = function()
			vim.opt.list = true
			-- vim.opt.listchars:append "space:⋅"
			-- vim.opt.listchars:append "eol:↴"
			require("indent_blankline").setup({
				space_char_blankline = " ",
				show_current_context = true,
				show_current_context_start = true,
			})
		end,
	},

	-- A pretty list for showing diagnostics, references,
	-- telescope results, quickfix and location lists to help you
	-- solve all the trouble your code is causing.
	-- trouble.nvim
	-- https://github.com/folke/trouble.nvim
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({ use_diagnostic_signs = true })
		end,
	},

	-- Status line
	-- lualine.nvim
	-- https://github.com/nvim-lualine/lualine.nvim
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress", "ObsessionStatus" },
					lualine_z = { "location" },
				},
			})
		end,
	},

	-- Git signs
	-- gitsigns.nvim
	-- https://github.com/lewis6991/gitsigns.nvim
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- Git blame
	-- git-blame.nvim
	-- https://github.com/f-person/git-blame.nvim}
	{ "f-person/git-blame.nvim" },

	-- LazyGit integration
	-- lazygit.nvim
	-- https://github.com/kdheepak/lazygit.nvim
	{ "kdheepak/lazygit.nvim", dependencies = "nvim-lua/plenary.nvim" },

	-- fzf and telescope
	-- telescope-fzf-native.nvim
	-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	-- telescope.nvim
	-- https://github.com/nvim-telescope/telescope.nvim
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
				},
			})

			telescope.load_extension("fzf")
		end,
	},

	-- Autocompletion
	-- nvim-cmp
	-- https://github.com/hrsh7th/nvim-cmp
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"onsails/lspkind.nvim",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local lspkind = require("lspkind")

			--load friendly-snippets
			require("luasnip/loaders/from_vscode").lazy_load()

			-- load custom snippets inside .config/nvim/snippets
			require("luasnip.loaders.from_vscode").lazy_load({ paths = vim.fn.stdpath("config") .. "/snippets" })

			vim.opt.completeopt = "menu,menuone,noselect"

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-e>"] = cmp.mapping.select_prev_item(), -- previous suggestion
					["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
					["<C-c>"] = cmp.mapping.abort(), -- close completion window
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				}),
				-- sources for autocompletion
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- lsp
					{ name = "luasnip" }, -- snippets
					{ name = "buffer" }, -- text within current buffer
					{ name = "path" }, -- file system paths
					{ name = "cmdline" }, -- command line
				}),
				-- configure lspkind for vs-code like icons
				formatting = {
					format = lspkind.cmp_format({
						maxwidth = 50,
						ellipsis_char = "...",
					}),
				},
			})
		end,
	},

	-- UI extras
	-- dressing.nvim
	-- https://github.com/stevearc/dressing.nvim
	{
		"stevearc/dressing.nvim",
	},
}
