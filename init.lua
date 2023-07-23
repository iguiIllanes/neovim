-- Lazy.nvim install script
require("config.core.lazy")

-- Call core config
require("config.core.options")
require("config.core.keymaps")

-- Call lazy.nvim plugin
require("lazy").setup("plugins")
