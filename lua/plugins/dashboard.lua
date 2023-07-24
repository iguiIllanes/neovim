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
						{ desc = "󰊳 Update Packages", group = "@property", action = "Lazy update", key = "u" },
						{
							icon = "󰈞 ",
							icon_hl = "@variable",
							desc = "Files",
							group = "Label",
							action = "Telescope find_files",
							key = "f",
						},
					},
				},
			})
		end,
	},
}
