local M = {}

local default_options = {
	-- Enable/disable specific integrations
	integrations = {
		telescope = true,
		nvim_tree = true,
		gitsigns = true,
		bufferline = true, -- For file tabs
		incline = true, -- For incline.nvim
		lazygit = true, -- For lazygit integration
		which_key = true, -- For which-key popup
		notify = true, -- For nvim-notify
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
		colors.bg_dark = "NONE"
		colors.bg_light = "NONE"
		colors.gutter_bg = "NONE"
		colors.status_bg = "NONE"
		colors.tab_active_bg = "NONE"
		colors.tab_inactive_bg = "NONE"
		colors.pmenu_bg = "NONE"
		colors.fold_bg = "NONE"
		-- Also make incline and which-key transparent
		colors.bg_highlight = "NONE"
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

	if opts.integrations.bufferline then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.bufferline")
		if ok then
			require("xcodedark.groups.integrations.bufferline").setup(colors)
		end
	end

	if opts.integrations.incline then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.incline")
		if ok then
			require("xcodedark.groups.integrations.incline").setup(colors)
		end
	end

	if opts.integrations.lazygit then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.lazygit")
		if ok then
			require("xcodedark.groups.integrations.lazygit").setup(colors)
		end
	end

	if opts.integrations.which_key then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.which-key")
		if ok then
			require("xcodedark.groups.integrations.which-key").setup(colors)
		end
	end

	if opts.integrations.notify then
		local ok, _ = pcall(require, "xcodedark.groups.integrations.notify")
		if ok then
			require("xcodedark.groups.integrations.notify").setup(colors)
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

	-- Apply additional transparency fixes for specific elements
	if opts.transparent then
		-- Force transparency for problematic highlights
		vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.border, bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.line_number, bg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = colors.line_number, bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.line_number_current, bg = "NONE" })

		-- Fix incline transparency
		vim.api.nvim_set_hl(0, "InclineNormal", { fg = colors.fg_alt, bg = "NONE" })
		vim.api.nvim_set_hl(0, "InclineNormalNC", { fg = colors.fg_dark, bg = "NONE" })

		-- Fix which-key transparency
		vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "WhichKey", { fg = colors.function_name, bg = "NONE", bold = true })
		vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = colors.keyword, bg = "NONE" })
		vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = colors.fg, bg = "NONE" })

		-- Fix bufferline transparency
		vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = colors.tab_inactive_fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = colors.tab_active_fg, bg = "NONE", bold = true })
		vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { fg = colors.tab_inactive_fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "BufferLineBuffer", { fg = colors.fg_dark, bg = "NONE" })

		-- Fix lazygit transparency
		vim.api.nvim_set_hl(0, "LazyGitFloat", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "LazyGitBorder", { fg = colors.border, bg = "NONE" })
		vim.api.nvim_set_hl(0, "TerminalNormal", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "TerminalNormalFloat", { fg = colors.fg, bg = "NONE" })
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
