local M = {}

local default_options = {
	-- Enable/disable specific integrations
	integrations = {
		telescope = true,
		nvim_tree = true,
		gitsigns = true,
	},
	-- Style options
	styles = {
		comments = { italic = true },
		keywords = {},
		functions = {},
		variables = {},
		strings = {},
	},
	-- Terminal colors
	terminal_colors = true,
	-- Transparent background
	transparent = false,
}

function M.load(opts)
	opts = vim.tbl_deep_extend("force", default_options, opts or {})

	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colours_name = "xcodedark"

	local colors = require("xcodedark.colors")

	-- Apply transparent background if enabled
	if opts.transparent then
		colors.bg = "NONE"
		colors.bg_alt = "NONE"
		colors.gutter_bg = "NONE"
		colors.status_bg = "NONE"
	end

	-- Load core highlight groups
	require("xcodedark.groups.editor").setup(colors)
	require("xcodedark.groups.syntax").setup(colors)
	require("xcodedark.groups.integrations.treesitter").setup(colors)
	require("xcodedark.groups.integrations.lsp").setup(colors)

	-- Load optional integrations with error handling
	if opts.integrations.telescope then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.telescope")
		if ok then
			require("xcodedark.groups.integrations.telescope").setup(colors)
		end
	end

	if opts.integrations.nvim_tree then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.nvim-tree")
		if ok then
			require("xcodedark.groups.integrations.nvim-tree").setup(colors)
		end
	end

	if opts.integrations.gitsigns then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.gitsigns")
		if ok then
			require("xcodedark.groups.integrations.gitsigns").setup(colors)
		end
	end

	-- Set terminal colors if enabled
	if opts.terminal_colors then
		vim.g.terminal_color_0 = colors.terminal_black
		vim.g.terminal_color_1 = colors.terminal_red
		vim.g.terminal_color_2 = colors.terminal_green
		vim.g.terminal_color_3 = colors.terminal_yellow
		vim.g.terminal_color_4 = colors.terminal_blue
		vim.g.terminal_color_5 = colors.terminal_magenta
		vim.g.terminal_color_6 = colors.terminal_cyan
		vim.g.terminal_color_7 = colors.terminal_white
		vim.g.terminal_color_8 = colors.terminal_bright_black
		vim.g.terminal_color_9 = colors.terminal_bright_red
		vim.g.terminal_color_10 = colors.terminal_bright_green
		vim.g.terminal_color_11 = colors.terminal_bright_yellow
		vim.g.terminal_color_12 = colors.terminal_bright_blue
		vim.g.terminal_color_13 = colors.terminal_bright_magenta
		vim.g.terminal_color_14 = colors.terminal_bright_cyan
		vim.g.terminal_color_15 = colors.terminal_bright_white
	end
end

function M.setup(opts)
	opts = opts or {}
	M.load(opts)
end

-- Convenience function to get the color palette
function M.get_colors()
	return require("xcodedark.colors")
end

return M
