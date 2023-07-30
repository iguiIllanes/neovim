-- Colorschemes
-- List of colorschemes to be used by nvim
--
--		INFO:
--		- Remember to change prefered colorscheme in init.lua
--
return {
	-- Nighfly Colors
	-- vim-nightfly-colors
	-- https://github.com/bluz71/vim-nightfly-colors
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000,
		config = function()
			-- colorscheme configuration
			vim.g.nightflyItalics = true
			vim.g.nightflyUndercurls = true
			vim.g.nightflyUnderlineMatchParen = true

			-- sets transparent background on gui and cterm versions
			-- vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
		end,
	},

	-- Moonfly Colors
	-- vim-moonfly-colors
	-- https://github.com/bluz71/vim-moonfly-colors
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			-- colorscheme configuration
			vim.g.moonflyItalics = true
			vim.g.moonflyUndercurls = true
			vim.g.moonflyUnderlineMatchParen = true
		end,
	},

	-- Tokyonight Colors
	-- tokyonight.nvim
	-- https://github.com/folke/tokyonight.nvim
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-- Kanagawa Colors
	-- kanagawa.nvim
	-- https://github.com/rebelot/kanagawa.nvim
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
