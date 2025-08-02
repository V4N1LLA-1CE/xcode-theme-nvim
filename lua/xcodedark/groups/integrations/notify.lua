local M = {}

function M.setup(colors)
	local highlights = {
		-- Notification windows
		NotifyBackground = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Error notifications
		NotifyERRORBorder = {
			fg = colors.error,
			bg = colors.bg_light,
		},
		NotifyERRORIcon = {
			fg = colors.error,
			bg = colors.bg_light,
		},
		NotifyERRORTitle = {
			fg = colors.error,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyERRORBody = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Warning notifications
		NotifyWARNBorder = {
			fg = colors.warning,
			bg = colors.bg_light,
		},
		NotifyWARNIcon = {
			fg = colors.warning,
			bg = colors.bg_light,
		},
		NotifyWARNTitle = {
			fg = colors.warning,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyWARNBody = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Info notifications
		NotifyINFOBorder = {
			fg = colors.info,
			bg = colors.bg_light,
		},
		NotifyINFOIcon = {
			fg = colors.info,
			bg = colors.bg_light,
		},
		NotifyINFOTitle = {
			fg = colors.info,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyINFOBody = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Debug notifications
		NotifyDEBUGBorder = {
			fg = colors.hint,
			bg = colors.bg_light,
		},
		NotifyDEBUGIcon = {
			fg = colors.hint,
			bg = colors.bg_light,
		},
		NotifyDEBUGTitle = {
			fg = colors.hint,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyDEBUGBody = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Trace notifications
		NotifyTRACEBorder = {
			fg = colors.fg_dark,
			bg = colors.bg_light,
		},
		NotifyTRACEIcon = {
			fg = colors.fg_dark,
			bg = colors.bg_light,
		},
		NotifyTRACETitle = {
			fg = colors.fg_dark,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyTRACEBody = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Success/OK notifications
		NotifyOKBorder = {
			fg = colors.git_add,
			bg = colors.bg_light,
		},
		NotifyOKIcon = {
			fg = colors.git_add,
			bg = colors.bg_light,
		},
		NotifyOKTitle = {
			fg = colors.git_add,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyOKBody = {
			fg = colors.fg,
			bg = colors.bg_light,
		},

		-- Log level highlights
		NotifyLogTime = {
			fg = colors.comment,
			bg = colors.bg_light,
			italic = true,
		},
		NotifyLogTitle = {
			fg = colors.function_name,
			bg = colors.bg_light,
			bold = true,
		},

		-- Progress notifications
		NotifyProgressBorder = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},
		NotifyProgressIcon = {
			fg = colors.function_name,
			bg = colors.bg_light,
		},
		NotifyProgressTitle = {
			fg = colors.function_name,
			bg = colors.bg_light,
			bold = true,
		},
		NotifyProgressBody = {
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
