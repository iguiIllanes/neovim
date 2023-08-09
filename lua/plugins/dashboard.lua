return {
	-- Dashboard
	-- dashboard-nvim
	-- https://github.vom/nvimdev/dashboard-nvim
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local NVIM_CONFIG_VERSION = "1.0"

			local nvimVersion = vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch

			require("dashboard").setup({
				theme = "hyper",
				config = {
					header = {
						[[                                __                _                         ]],
						[[                             /\ \ \___  ___/\   /(_)_ __ ____               ]],
						[[            ,   ,           /  \/ / _ \/ _ \ \ / | | '_ ` _  \              ]],
						[[          ,-`{-`/          / /\  |  __| (_) \ V /| | | | | | |              ]],
						[[       ,-~ , \ {-~~-,      \_\ \/ \___|\___/ \_/ |_|_| |_| |_|              ]],
						[[     ,~  ,   ,`,-~~-,`,                                 v]]
							.. nvimVersion
							.. [[              ]],
						[[    ,`   ,   { {      } }                                             }/    ]],
						[[  ;     ,--/`\ \    / /                                     }/      /,/     ]],
						[[ ;  ,-./      \ \  { {  (                                  /,;    ,/ ,/     ]],
						[[ ; /   `       } } `, `-`-.___                            / `,  ,/  `,/     ]],
						[[  \|         ,`,`    `~.___,---}                         / ,`,,/  ,`,;      ]],
						[[   `        { {                                     __  /  ,`/   ,`,;       ]],
						[[         /   \ \                                 _,`, `{  `,{   `,`;`       ]],
						[[        {     } }       /~\         .-:::-.     (--,   ;\ `,}  `,`;         ]],
						[[        \\._./ /      /` , \      ,:::::::::,     `~;   \},/  `,`;     ,-=- ]],
						[[         `-..-`      /. `  .\_   ;:::::::::::;  __,{     `/  `,`;     {     ]],
						[[                    / , ~ . ^ `~`\:::::::::::<<~>-,,`,    `-,  ``,_    }    ]],
						[[                 /~~ . `  . ~  , .`~~\:::::::;    _-~  ;__,        `,-`     ]],
						[[        /`\    /~,  . ~ , '  `  ,  .` \::::;`   <<<~```   ``-,,__   ;       ]],
						[[       /` .`\ /` .  ^  ,  ~  ,  . ` . ~\~                       \\, `,__    ]],
						[[      / ` , ,`\.  ` ~  ,  ^ ,  `  ~ . . ``~~~`,                   `-`--, \  ]],
						[[     / , ~ . ~ \ , ` .  ^  `  , . ^   .   , ` .`-,___,---,__            ``  ]],
						[[   /` ` . ~ . ` `\ `  ~  ,  .  ,  `  ,  . ~  ^  ,  .  ~  , .`~---,___       ]],
						[[ /` . `  ,  . ~ , \  `  ~  ,  .  ^  ,  ~  .  `  ,  ~  .  ^  ,  ~  .  `-,    ]],
						[[                                                               ]             ]],
						[[        Version ]]
							.. NVIM_CONFIG_VERSION
							.. [[           iguii/neovim                󰢱 ]]
							.. _VERSION
							.. [[       ]],
						[[                                                                            ]],
					},
					shortcut = {
						{
							icon = "󰊳 ",
							desc = "Update Packages",
							group = "@property",
							action = "Lazy update",
							key = "u",
						},
						{
							icon = "",
							desc = "Restore session",
							group = "@property",
							action = "SessionRestore",
							key = "L",
						},
						{
							icon = "󰑬 ",
							desc = "Show sessions",
							group = "@property",
							action = "Telescope session-lens search_session",
							key = "ss",
						},
						{
							icon = "󰈞 ",
							desc = "Find Files",
							group = "Label",
							action = "Telescope find_files",
							key = "f",
						},
						{
							icon = "󰑬 ",
							desc = "Open LazyGit",
							group = "Label",
							action = "LazyGit",
							key = "gg",
						},
						{
							icon = "󰑮 ",
							desc = "quit neovim",
							group = "Label",
							action = "quit",
							key = "q",
						},
					},
				},
			})
		end,
	},
}
