local M = {}

function M.setup(colors)
	-- Check if we're in transparent mode
	local bg = colors.bg_light
	if colors.bg == "NONE" then
		bg = "NONE"
	end

	local highlights = {
		-- Incline normal window
		InclineNormal = {
			fg = colors.fg_alt,
			bg = bg,
		},
		InclineNormalNC = {
			fg = colors.fg_dark,
			bg = bg,
		},

		-- For the active/focused window indicator
		InclineActive = {
			fg = colors.function_name,
			bg = bg,
			bold = true,
		},

		-- For inactive windows
		InclineInactive = {
			fg = colors.fg_dark,
			bg = bg,
		},

		-- File modification indicator
		InclineModified = {
			fg = colors.git_change,
			bg = bg,
			bold = true,
		},

		-- Readonly file indicator
		InclineReadonly = {
			fg = colors.error,
			bg = bg,
		},

		-- File type/icon
		InclineFileIcon = {
			fg = colors.function_name,
			bg = bg,
		},

		-- Diagnostic indicators
		InclineError = {
			fg = colors.error,
			bg = bg,
			bold = true,
		},
		InclineWarning = {
			fg = colors.warning,
			bg = bg,
			bold = true,
		},
		InclineInfo = {
			fg = colors.info,
			bg = bg,
		},
		InclineHint = {
			fg = colors.hint,
			bg = bg,
		},

		-- Git branch/status
		InclineGit = {
			fg = colors.git_add,
			bg = bg,
		},
		InclineGitBranch = {
			fg = colors.function_name,
			bg = bg,
		},
		InclineGitAdded = {
			fg = colors.git_add,
			bg = bg,
		},
		InclineGitChanged = {
			fg = colors.git_change,
			bg = bg,
		},
		InclineGitRemoved = {
			fg = colors.git_delete,
			bg = bg,
		},

		-- LSP status
		InclineLsp = {
			fg = colors.function_name,
			bg = bg,
		},
		InclineLspError = {
			fg = colors.error,
			bg = bg,
		},
		InclineLspWarning = {
			fg = colors.warning,
			bg = bg,
		},
		InclineLspInfo = {
			fg = colors.info,
			bg = bg,
		},
		InclineLspHint = {
			fg = colors.hint,
			bg = bg,
		},

		-- Separator elements
		InclineSeparator = {
			fg = colors.fg_darker,
			bg = bg,
		},

		-- Special states
		InclineTerminal = {
			fg = colors.terminal_green,
			bg = bg,
			bold = true,
		},
		InclineHelp = {
			fg = colors.info,
			bg = bg,
		},
		InclinePreview = {
			fg = colors.function_name,
			bg = bg,
			italic = true,
		},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
