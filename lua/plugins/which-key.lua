return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
}

-- local wk = require("which-key")
--
-- wk.register({
-- 	f = {
-- 		name = "TEST"
-- 	}
-- })
