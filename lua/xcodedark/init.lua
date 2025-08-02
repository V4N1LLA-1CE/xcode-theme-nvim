local M = {}

function M.load()
	-- clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colours_name = "xcodedark"

	local colours = require("xcodedark.colors")

	require("xcodedark.groups.editor").setup(colours)
	require("xcodedark.groups.syntax").setup(colours)
	require("xcodedark.groups.integrations.treesitter").setup(colours)
	require("xcodedark.groups.integrations.lsp").setup(colours)
end

function M.setup(opts)
	opts = opts or {}
	M.load()
end

return M
