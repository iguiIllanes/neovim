-- Lazy.nvim install script
require("config.core.lazy")

-- Call core config
require("config.core.options")
require("config.core.keymaps")
require("config.core.autocmds")

-- Call lazy.nvim plugin
local lazy = require("lazy")
lazy.setup("plugins")

-- colorscheme configuration
vim.cmd("colorscheme moonfly")
