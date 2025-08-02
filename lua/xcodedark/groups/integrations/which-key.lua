local M = {}

function M.setup(colors)
	local highlights = {
		-- Which-key popup window
		WhichKey = {
			fg = colors.function_name,
			bg = colors.bg_light,
			bold = true,
		},
		WhichKeyGroup = {
			fg = colors.keyword,
			bg = colors.bg_light,
		},
		WhichKeyDesc = {
			fg = colors.fg,
			bg = colors.bg_light,
		},
		WhichKeySeperator = {
			fg = colors.comment,
			bg = colors.bg_light,
		},
		WhichKeySeparator = {
			fg = colors.comment,
			bg = colors.bg_light,
		},
		WhichKeyFloat = {
			bg = colors.bg_light,
		},
		WhichKeyBorder = {
			fg = colors.border,
			bg = colors.bg_light,
		},

		-- Different key types
		WhichKeyValue = {
			fg = colors.string,
			bg = colors.bg_light,
		},

		-- Icons and symbols
		WhichKeyIcon = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},
		WhichKeyIconAzure = {
			fg = colors.info,
			bg = colors.bg_light,
		},
		WhichKeyIconBlue = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},
		WhichKeyIconCyan = {
			fg = colors.terminal_cyan,
			bg = colors.bg_light,
		},
		WhichKeyIconGreen = {
			fg = colors.git_add,
			bg = colors.bg_light,
		},
		WhichKeyIconGrey = {
			fg = colors.fg_dark,
			bg = colors.bg_light,
		},
		WhichKeyIconOrange = {
			fg = colors.preprocessor,
			bg = colors.bg_light,
		},
		WhichKeyIconPurple = {
			fg = colors.keyword,
			bg = colors.bg_light,
		},
		WhichKeyIconRed = {
			fg = colors.error,
			bg = colors.bg_light,
		},
		WhichKeyIconYellow = {
			fg = colors.warning,
			bg = colors.bg_light,
		},

		-- Title and normal elements
		WhichKeyTitle = {
			fg = colors.function_name,
			bg = colors.bg_light,
			bold = true,
		},
		WhichKeyNormal = {
			fg = colors.fg,
			bg = colors.bg_light,
		},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
