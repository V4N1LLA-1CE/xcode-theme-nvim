local M = {}

function M.setup(colors)
	-- Check if we're in transparent mode
	local bg = colors.bg_light
	if colors.bg == "NONE" then
		bg = "NONE"
	end

	local highlights = {
		-- Which-key popup window
		WhichKey = {
			fg = colors.function_name,
			bg = bg,
			bold = true,
		},
		WhichKeyGroup = {
			fg = colors.keyword,
			bg = bg,
		},
		WhichKeyDesc = {
			fg = colors.fg,
			bg = bg,
		},
		WhichKeySeperator = {
			fg = colors.comment,
			bg = bg,
		},
		WhichKeySeparator = {
			fg = colors.comment,
			bg = bg,
		},
		WhichKeyFloat = {
			bg = bg,
		},
		WhichKeyBorder = {
			fg = colors.border,
			bg = bg,
		},

		-- Different key types
		WhichKeyValue = {
			fg = colors.string,
			bg = bg,
		},

		-- Icons and symbols
		WhichKeyIcon = {
			fg = colors.function_name,
			bg = bg,
		},
		WhichKeyIconAzure = {
			fg = colors.info,
			bg = bg,
		},
		WhichKeyIconBlue = {
			fg = colors.function_name,
			bg = bg,
		},
		WhichKeyIconCyan = {
			fg = colors.terminal_cyan,
			bg = bg,
		},
		WhichKeyIconGreen = {
			fg = colors.git_add,
			bg = bg,
		},
		WhichKeyIconGrey = {
			fg = colors.fg_dark,
			bg = bg,
		},
		WhichKeyIconOrange = {
			fg = colors.preprocessor,
			bg = bg,
		},
		WhichKeyIconPurple = {
			fg = colors.keyword,
			bg = bg,
		},
		WhichKeyIconRed = {
			fg = colors.error,
			bg = bg,
		},
		WhichKeyIconYellow = {
			fg = colors.warning,
			bg = bg,
		},

		-- Title and normal elements
		WhichKeyTitle = {
			fg = colors.function_name,
			bg = bg,
			bold = true,
		},
		WhichKeyNormal = {
			fg = colors.fg,
			bg = bg,
		},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
