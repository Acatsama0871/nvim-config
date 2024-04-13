return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local togglevim = require("toggleterm")
		togglevim.setup({
			open_mapping = [[<c-\>]],
			direction = "horizontal",
			shell = "/bin/bash",
		})
	end,
}
