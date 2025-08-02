local M = {}

function M.setup(colors)
	local highlights = {
		-- Incline normal window
		InclineNormal = {
			fg = colors.fg_alt,
			bg = colors.bg_light,
		},
		InclineNormalNC = {
			fg = colors.fg_dark,
			bg = colors.bg_light,
		},

		-- For the active/focused window indicator
		InclineActive = {
			fg = colors.function_name,
			bg = colors.bg_light,
			bold = true,
		},

		-- For inactive windows
		InclineInactive = {
			fg = colors.fg_dark,
			bg = colors.bg_light,
		},

		-- File modification indicator
		InclineModified = {
			fg = colors.git_change,
			bg = colors.bg_light,
			bold = true,
		},

		-- Readonly file indicator
		InclineReadonly = {
			fg = colors.error,
			bg = colors.bg_light,
		},

		-- File type/icon
		InclineFileIcon = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},

		-- Diagnostic indicators
		InclineError = {
			fg = colors.error,
			bg = colors.bg_light,
			bold = true,
		},
		InclineWarning = {
			fg = colors.warning,
			bg = colors.bg_light,
			bold = true,
		},
		InclineInfo = {
			fg = colors.info,
			bg = colors.bg_light,
		},
		InclineHint = {
			fg = colors.hint,
			bg = colors.bg_light,
		},

		-- Git branch/status
		InclineGit = {
			fg = colors.git_add,
			bg = colors.bg_light,
		},
		InclineGitBranch = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},
		InclineGitAdded = {
			fg = colors.git_add,
			bg = colors.bg_light,
		},
		InclineGitChanged = {
			fg = colors.git_change,
			bg = colors.bg_light,
		},
		InclineGitRemoved = {
			fg = colors.git_delete,
			bg = colors.bg_light,
		},

		-- LSP status
		InclineLsp = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},
		InclineLspError = {
			fg = colors.error,
			bg = colors.bg_light,
		},
		InclineLspWarning = {
			fg = colors.warning,
			bg = colors.bg_light,
		},
		InclineLspInfo = {
			fg = colors.info,
			bg = colors.bg_light,
		},
		InclineLspHint = {
			fg = colors.hint,
			bg = colors.bg_light,
		},

		-- Separator elements
		InclineSeparator = {
			fg = colors.fg_darker,
			bg = colors.bg_light,
		},

		-- Special states
		InclineTerminal = {
			fg = colors.terminal_green,
			bg = colors.bg_light,
			bold = true,
		},
		InclineHelp = {
			fg = colors.info,
			bg = colors.bg_light,
		},
		InclinePreview = {
			fg = colors.function_name,
			bg = colors.bg_light,
			italic = true,
		},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
