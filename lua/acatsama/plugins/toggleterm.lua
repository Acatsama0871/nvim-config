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

		-- set keymap
		local keymap = vim.keymap
		keymap.set("n", "<leader>vt", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
	end,
}
