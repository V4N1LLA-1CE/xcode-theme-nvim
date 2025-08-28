local M = {}

function M.setup(colors)
	local highlights = {
		-- Telescope main window (enhanced with Xcode-style colors)
		TelescopeNormal = { fg = colors.fg, bg = colors.bg_light },
		TelescopeBorder = { fg = colors.function_name, bg = colors.bg_light }, -- Use green border like Xcode
		TelescopeTitle = { fg = colors.keyword, bg = colors.bg_light, bold = true }, -- Pink title for pop

		-- Telescope prompt (more vibrant)
		TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_dark },
		TelescopePromptBorder = { fg = colors.type, bg = colors.bg_dark }, -- Light blue border
		TelescopePromptTitle = { fg = colors.string, bg = colors.bg_dark, bold = true }, -- Coral title
		TelescopePromptPrefix = { fg = colors.keyword, bg = colors.bg_dark, bold = true }, -- Pink prefix
		TelescopePromptCounter = { fg = colors.number, bg = colors.bg_dark }, -- Yellow counter

		-- Telescope results (enhanced styling)
		TelescopeResultsNormal = { fg = colors.fg, bg = colors.bg_light },
		TelescopeResultsBorder = { fg = colors.constant, bg = colors.bg_light }, -- Cyan border
		TelescopeResultsTitle = { fg = colors.purple, bg = colors.bg_light, bold = true }, -- Purple title
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

		-- Telescope preview (vibrant borders)
		TelescopePreviewNormal = { fg = colors.fg, bg = colors.bg },
		TelescopePreviewBorder = { fg = colors.attribute, bg = colors.bg }, -- Orange border for preview
		TelescopePreviewTitle = { fg = colors.number, bg = colors.bg, bold = true }, -- Yellow title
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

		-- Telescope selection and matching (enhanced visibility)
		TelescopeSelection = { fg = colors.fg, bg = colors.selection, bold = true },
		TelescopeSelectionCaret = { fg = colors.keyword, bg = colors.selection, bold = true }, -- Pink caret
		TelescopeMultiSelection = { fg = colors.fg, bg = colors.selection },
		TelescopeMultiIcon = { fg = colors.string, bold = true }, -- Coral multi-select icon
		TelescopeMatching = { fg = colors.number, bg = colors.search, bold = true }, -- Yellow matching with background

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
