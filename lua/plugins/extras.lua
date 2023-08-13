return {
	-- Snippets
	-- LuaSnip
	-- https://github.com/L3MON4D3/LuaSnip
	{ "L3MON4D3/LuaSnip" },
	-- friendly-snippets
	-- https://github.com/rafamadriz/friendly-snippets
	{ "rafamadriz/friendly-snippets" },

	-- Github Copilot
	-- copilot.nvim
	-- https://github.com/github/copilot.vim
	{ "github/copilot.vim" },

	-- Flutter Tools
	-- flutter-tools.nvim
	-- https://github.com/akinsho/flutter-tools.nvim
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
		config = true,
	},

	-- jdtls (Java LSP) extensions
	-- nvim-jdtls
	-- https://github.com/mfussenegger/nvim-jdtls
	{ "mfussenegger/nvim-jdtls" },
}
