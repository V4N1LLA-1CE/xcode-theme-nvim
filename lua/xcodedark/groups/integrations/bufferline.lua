local M = {}

function M.setup(colors)
	-- Check if we're in transparent mode
	local tab_active_bg = colors.tab_active_bg
	local tab_inactive_bg = colors.tab_inactive_bg

	if colors.bg == "NONE" then
		tab_active_bg = "NONE"
		tab_inactive_bg = "NONE"
	end

	local highlights = {
		-- Background (the main tabline background)
		BufferLineBackground = { fg = colors.tab_inactive_fg, bg = tab_inactive_bg },
		BufferLineFill = { bg = tab_inactive_bg },

		-- Active/current buffer
		BufferLineBufferSelected = {
			fg = colors.tab_active_fg,
			bg = tab_active_bg,
			bold = true,
		},
		BufferLineNumberSelected = {
			fg = colors.tab_active_fg,
			bg = tab_active_bg,
			bold = true,
		},
		BufferLineCloseButtonSelected = {
			fg = colors.tab_active_fg,
			bg = tab_active_bg,
		},
		BufferLineModifiedSelected = {
			fg = colors.git_change,
			bg = tab_active_bg,
		},
		BufferLineDuplicateSelected = {
			fg = colors.tab_active_fg,
			bg = tab_active_bg,
			italic = true,
		},
		BufferLineSeparatorSelected = {
			fg = tab_active_bg,
			bg = tab_active_bg,
		},
		BufferLineIndicatorSelected = {
			fg = colors.function_name,
			bg = tab_active_bg,
		},

		-- Inactive/visible buffers
		BufferLineBufferVisible = {
			fg = colors.tab_inactive_fg,
			bg = tab_inactive_bg,
		},
		BufferLineNumberVisible = {
			fg = colors.tab_inactive_fg,
			bg = tab_inactive_bg,
		},
		BufferLineCloseButtonVisible = {
			fg = colors.tab_inactive_fg,
			bg = tab_inactive_bg,
		},
		BufferLineModifiedVisible = {
			fg = colors.git_change,
			bg = tab_inactive_bg,
		},
		BufferLineDuplicateVisible = {
			fg = colors.tab_inactive_fg,
			bg = tab_inactive_bg,
			italic = true,
		},
		BufferLineSeparatorVisible = {
			fg = tab_inactive_bg,
			bg = tab_inactive_bg,
		},

		-- Hidden/non-visible buffers
		BufferLineBuffer = {
			fg = colors.fg_dark,
			bg = tab_inactive_bg,
		},
		BufferLineNumber = {
			fg = colors.fg_dark,
			bg = tab_inactive_bg,
		},
		BufferLineCloseButton = {
			fg = colors.fg_dark,
			bg = tab_inactive_bg,
		},
		BufferLineModified = {
			fg = colors.git_change,
			bg = tab_inactive_bg,
		},
		BufferLineDuplicate = {
			fg = colors.fg_dark,
			bg = tab_inactive_bg,
			italic = true,
		},
		BufferLineSeparator = {
			fg = tab_inactive_bg,
			bg = tab_inactive_bg,
		},

		-- Tabs (for tab mode)
		BufferLineTab = {
			fg = colors.tab_inactive_fg,
			bg = tab_inactive_bg,
		},
		BufferLineTabSelected = {
			fg = colors.tab_active_fg,
			bg = tab_active_bg,
			bold = true,
		},
		BufferLineTabClose = {
			fg = colors.error,
			bg = tab_inactive_bg,
		},

		-- Pick mode
		BufferLinePick = {
			fg = colors.bg,
			bg = colors.warning,
			bold = true,
		},
		BufferLinePickSelected = {
			fg = colors.bg,
			bg = colors.function_name,
			bold = true,
		},
		BufferLinePickVisible = {
			fg = colors.bg,
			bg = colors.info,
			bold = true,
		},

		-- Diagnostic indicators
		BufferLineError = {
			fg = colors.error,
			bg = tab_inactive_bg,
		},
		BufferLineErrorSelected = {
			fg = colors.error,
			bg = tab_active_bg,
		},
		BufferLineErrorVisible = {
			fg = colors.error,
			bg = tab_inactive_bg,
		},

		BufferLineWarning = {
			fg = colors.warning,
			bg = tab_inactive_bg,
		},
		BufferLineWarningSelected = {
			fg = colors.warning,
			bg = tab_active_bg,
		},
		BufferLineWarningVisible = {
			fg = colors.warning,
			bg = tab_inactive_bg,
		},

		BufferLineInfo = {
			fg = colors.info,
			bg = tab_inactive_bg,
		},
		BufferLineInfoSelected = {
			fg = colors.info,
			bg = tab_active_bg,
		},
		BufferLineInfoVisible = {
			fg = colors.info,
			bg = tab_inactive_bg,
		},

		BufferLineHint = {
			fg = colors.hint,
			bg = tab_inactive_bg,
		},
		BufferLineHintSelected = {
			fg = colors.hint,
			bg = tab_active_bg,
		},
		BufferLineHintVisible = {
			fg = colors.hint,
			bg = tab_inactive_bg,
		},

		-- Diagnostic count
		BufferLineErrorDiagnostic = {
			fg = colors.error,
			bg = tab_inactive_bg,
		},
		BufferLineErrorDiagnosticSelected = {
			fg = colors.error,
			bg = tab_active_bg,
		},
		BufferLineErrorDiagnosticVisible = {
			fg = colors.error,
			bg = tab_inactive_bg,
		},

		BufferLineWarningDiagnostic = {
			fg = colors.warning,
			bg = tab_inactive_bg,
		},
		BufferLineWarningDiagnosticSelected = {
			fg = colors.warning,
			bg = tab_active_bg,
		},
		BufferLineWarningDiagnosticVisible = {
			fg = colors.warning,
			bg = tab_inactive_bg,
		},

		BufferLineInfoDiagnostic = {
			fg = colors.info,
			bg = tab_inactive_bg,
		},
		BufferLineInfoDiagnosticSelected = {
			fg = colors.info,
			bg = tab_active_bg,
		},
		BufferLineInfoDiagnosticVisible = {
			fg = colors.info,
			bg = tab_inactive_bg,
		},

		BufferLineHintDiagnostic = {
			fg = colors.hint,
			bg = tab_inactive_bg,
		},
		BufferLineHintDiagnosticSelected = {
			fg = colors.hint,
			bg = tab_active_bg,
		},
		BufferLineHintDiagnosticVisible = {
			fg = colors.hint,
			bg = tab_inactive_bg,
		},

		-- DevIcon highlights (file type icons)
		BufferLineDevIconDefault = {
			fg = colors.fg,
			bg = tab_inactive_bg,
		},
		BufferLineDevIconDefaultSelected = {
			fg = colors.fg,
			bg = tab_active_bg,
		},
		BufferLineDevIconDefaultVisible = {
			fg = colors.fg,
			bg = tab_inactive_bg,
		},

		-- Offset highlights (for side panels)
		BufferLineOffsetSeparator = {
			fg = colors.separator,
			bg = tab_inactive_bg,
		},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
