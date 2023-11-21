return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- enable rainbow brackets (w/ nvim-ts-rainbow plugin)
			rainbow = {
				enable = true,
				extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"bash",
				"cpp",
				"css",
				"dockerfile",
				"go",
				"gitignore",
				"graphql",
				"html",
				"java",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"regex",
				"svelte",
				"tsx",
				"typescript",
				"vim",
				"yaml",
			},
			-- auto install above language parsers
			auto_install = true,
		})
	end,
}
