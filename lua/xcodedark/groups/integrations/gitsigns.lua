local M = {}

function M.setup(colors)
	local highlights = {
		-- Git signs in the sign column
		GitSignsAdd = { fg = colors.git_add, bg = colors.gutter_bg },
		GitSignsChange = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsDelete = { fg = colors.git_delete, bg = colors.gutter_bg },
		GitSignsChangedelete = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsTopdelete = { fg = colors.git_delete, bg = colors.gutter_bg },
		GitSignsUntracked = { fg = colors.git_ignored, bg = colors.gutter_bg },

		-- Git signs with line number highlights
		GitSignsAddNr = { fg = colors.git_add, bg = colors.gutter_bg },
		GitSignsChangeNr = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsDeleteNr = { fg = colors.git_delete, bg = colors.gutter_bg },
		GitSignsChangedeleteNr = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsTopdeleteNr = { fg = colors.git_delete, bg = colors.gutter_bg },
		GitSignsUntrackedNr = { fg = colors.git_ignored, bg = colors.gutter_bg },

		-- Git signs with line highlights (when using line highlighting)
		GitSignsAddLn = { bg = colors.diff_add },
		GitSignsChangeLn = { bg = colors.diff_change },
		GitSignsDeleteLn = { bg = colors.diff_delete },
		GitSignsChangedeleteLn = { bg = colors.diff_change },
		GitSignsTopdeleteLn = { bg = colors.diff_delete },
		GitSignsUntrackedLn = { bg = colors.bg_highlight },

		-- Inline git blame (when using virtual text blame)
		GitSignsCurrentLineBlame = { fg = colors.comment, italic = true },

		-- Word diff highlights (for inline diff)
		GitSignsAddInline = { bg = colors.diff_add },
		GitSignsChangeInline = { bg = colors.diff_change },
		GitSignsDeleteInline = { bg = colors.diff_delete },

		-- Preview window for git hunks
		GitSignsAddPreview = { fg = colors.diff_add_fg, bg = colors.diff_add },
		GitSignsDeletePreview = { fg = colors.diff_delete_fg, bg = colors.diff_delete },

		-- Staged changes (when using staged diff)
		GitSignsStagedAdd = { fg = colors.git_add, bg = colors.gutter_bg },
		GitSignsStagedChange = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsStagedDelete = { fg = colors.git_delete, bg = colors.gutter_bg },
		GitSignsStagedChangedelete = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsStagedTopdelete = { fg = colors.git_delete, bg = colors.gutter_bg },

		-- Staged changes with line number highlights
		GitSignsStagedAddNr = { fg = colors.git_add, bg = colors.gutter_bg },
		GitSignsStagedChangeNr = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsStagedDeleteNr = { fg = colors.git_delete, bg = colors.gutter_bg },
		GitSignsStagedChangedeleteNr = { fg = colors.git_change, bg = colors.gutter_bg },
		GitSignsStagedTopdeleteNr = { fg = colors.git_delete, bg = colors.gutter_bg },

		-- Staged changes with line highlights
		GitSignsStagedAddLn = { bg = colors.diff_add },
		GitSignsStagedChangeLn = { bg = colors.diff_change },
		GitSignsStagedDeleteLn = { bg = colors.diff_delete },
		GitSignsStagedChangedeleteLn = { bg = colors.diff_change },
		GitSignsStagedTopdeleteLn = { bg = colors.diff_delete },
	}

	-- Apply highlights - gitsigns highlights work even if gitsigns isn't loaded yet
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
