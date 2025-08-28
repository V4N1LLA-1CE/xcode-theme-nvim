local M = {}

function M.setup(colors)
	local highlights = {
		-- Telescope main window
		TelescopeNormal = { fg = colors.fg, bg = colors.bg_light },
		TelescopeBorder = { fg = colors.border, bg = colors.bg_light },
		TelescopeTitle = { fg = colors.function_name, bg = colors.bg_light, bold = true },

		-- Telescope prompt
		TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_dark },
		TelescopePromptBorder = { fg = colors.border, bg = colors.bg_dark },
		TelescopePromptTitle = { fg = colors.function_name, bg = colors.bg_dark, bold = true },
		TelescopePromptPrefix = { fg = colors.function_name, bg = colors.bg_dark },
		TelescopePromptCounter = { fg = colors.fg_dark, bg = colors.bg_dark },

		-- Telescope results
		TelescopeResultsNormal = { fg = colors.fg, bg = colors.bg_light },
		TelescopeResultsBorder = { fg = colors.border, bg = colors.bg_light },
		TelescopeResultsTitle = { fg = colors.function_name, bg = colors.bg_light, bold = true },
		TelescopeResultsComment = { fg = colors.comment },
		TelescopeResultsSpecialComment = { fg = colors.comment, italic = true },
		TelescopeResultsLineNr = { fg = colors.line_number },
		TelescopeResultsIdentifier = { fg = colors.variable },
		TelescopeResultsFunction = { fg = colors.function_name },
		TelescopeResultsVariable = { fg = colors.variable },
		TelescopeResultsConstant = { fg = colors.constant },
		TelescopeResultsField = { fg = colors.property },
		TelescopeResultsOperator = { fg = colors.operator },
		TelescopeResultsNumber = { fg = colors.number },
		TelescopeResultsString = { fg = colors.string },
		TelescopeResultsBoolean = { fg = colors.boolean },
		TelescopeResultsClass = { fg = colors.type },
		TelescopeResultsMethod = { fg = colors.function_name },
		TelescopeResultsStruct = { fg = colors.type },

		-- Telescope preview
		TelescopePreviewNormal = { fg = colors.fg, bg = colors.bg },
		TelescopePreviewBorder = { fg = colors.border, bg = colors.bg },
		TelescopePreviewTitle = { fg = colors.function_name, bg = colors.bg, bold = true },
		TelescopePreviewLine = { bg = colors.cursor_line },
		TelescopePreviewMatch = { fg = colors.search_fg, bg = colors.search },
		TelescopePreviewPipe = { fg = colors.operator },
		TelescopePreviewCharDev = { fg = colors.warning },
		TelescopePreviewDirectory = { fg = colors.function_name },
		TelescopePreviewBlock = { fg = colors.warning },
		TelescopePreviewLink = { fg = colors.info },
		TelescopePreviewSocket = { fg = colors.error },
		TelescopePreviewRead = { fg = colors.git_add },
		TelescopePreviewWrite = { fg = colors.git_change },
		TelescopePreviewExecute = { fg = colors.git_delete },
		TelescopePreviewHyphen = { fg = colors.fg_dark },
		TelescopePreviewSticky = { fg = colors.attribute },
		TelescopePreviewSize = { fg = colors.number },
		TelescopePreviewUser = { fg = colors.type },
		TelescopePreviewGroup = { fg = colors.type },
		TelescopePreviewDate = { fg = colors.comment },

		-- Telescope selection and matching
		TelescopeSelection = { fg = colors.fg, bg = colors.selection, bold = true },
		TelescopeSelectionCaret = { fg = colors.function_name, bg = colors.selection },
		TelescopeMultiSelection = { fg = colors.fg, bg = colors.selection },
		TelescopeMultiIcon = { fg = colors.function_name },
		TelescopeMatching = { fg = colors.search_fg, bold = true },

		-- Telescope file browser specific
		TelescopePathSeparator = { fg = colors.fg_dark },

		-- Telescope git specific
		TelescopeResultsDiffAdd = { fg = colors.git_add },
		TelescopeResultsDiffChange = { fg = colors.git_change },
		TelescopeResultsDiffDelete = { fg = colors.git_delete },
		TelescopeResultsDiffUntracked = { fg = colors.git_ignored },

		-- Additional telescope elements (these are already defined above, removing duplicates)
	}

	-- Apply highlights - telescope highlights work even if telescope isn't loaded yet
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
