return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")

		substitute.setup()

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		vim.keymap.set("n", "y", substitute.operator, { desc = "Substitute with motion" })
		vim.keymap.set("n", "yy", substitute.line, { desc = "Substitute line" })
		vim.keymap.set("n", "Y", substitute.eol, { desc = "Substitute to end of line" })
		vim.keymap.set("x", "y", substitute.visual, { desc = "Substitute in visual mode" })
	end,
}
