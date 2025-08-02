local M = {}

function M.setup(colors)
	local highlights = {
		-- NvimTree main elements
		NvimTreeNormal = { fg = colors.fg, bg = colors.bg_alt },
		NvimTreeNormalNC = { fg = colors.fg, bg = colors.bg_alt },
		NvimTreeEndOfBuffer = { fg = colors.bg_alt, bg = colors.bg_alt },
		NvimTreeWinSeparator = { fg = colors.separator, bg = colors.separator },
		NvimTreeVertSplit = { fg = colors.separator, bg = colors.separator },
		NvimTreeCursorLine = { bg = colors.cursor_line },
		NvimTreeCursorColumn = { bg = colors.cursor_line },

		-- File and folder icons
		NvimTreeSymlink = { fg = colors.info },
		NvimTreeFolderName = { fg = colors.function_name },
		NvimTreeRootFolder = { fg = colors.function_name, bold = true },
		NvimTreeFolderIcon = { fg = colors.function_name },
		NvimTreeEmptyFolderName = { fg = colors.fg_dark },
		NvimTreeOpenedFolderName = { fg = colors.function_name, bold = true },
		NvimTreeExecFile = { fg = colors.git_add, bold = true },
		NvimTreeOpenedFile = { fg = colors.fg, bold = true },
		NvimTreeSpecialFile = { fg = colors.attribute, underline = true },
		NvimTreeImageFile = { fg = colors.string },
		NvimTreeMarkdownFile = { fg = colors.info },

		-- File status (git integration)
		NvimTreeGitDirty = { fg = colors.git_change },
		NvimTreeGitStaged = { fg = colors.git_add },
		NvimTreeGitMerge = { fg = colors.warning },
		NvimTreeGitRenamed = { fg = colors.git_change },
		NvimTreeGitNew = { fg = colors.git_add },
		NvimTreeGitDeleted = { fg = colors.git_delete },
		NvimTreeGitIgnored = { fg = colors.git_ignored },

		-- Indent and guides
		NvimTreeIndentMarker = { fg = colors.fg_darker },
		NvimTreeLiveFilterPrefix = { fg = colors.search_fg, bold = true },
		NvimTreeLiveFilterValue = { fg = colors.search_fg, bold = true },

		-- Window picker
		NvimTreeWindowPicker = { fg = colors.bg, bg = colors.function_name, bold = true },

		-- File permissions and file info
		NvimTreeFileIcon = { fg = colors.fg },
		NvimTreeFileDirty = { fg = colors.git_change },
		NvimTreeFileStaged = { fg = colors.git_add },
		NvimTreeFileMerge = { fg = colors.warning },
		NvimTreeFileRenamed = { fg = colors.git_change },
		NvimTreeFileNew = { fg = colors.git_add },
		NvimTreeFileDeleted = { fg = colors.git_delete },
		NvimTreeFileIgnored = { fg = colors.git_ignored },

		-- Bookmarks
		NvimTreeBookmark = { fg = colors.attribute },

		-- LSP diagnostics in tree
		NvimTreeLspDiagnosticsError = { fg = colors.error },
		NvimTreeLspDiagnosticsWarning = { fg = colors.warning },
		NvimTreeLspDiagnosticsInformation = { fg = colors.info },
		NvimTreeLspDiagnosticsHint = { fg = colors.hint },

		-- Modern nvim-tree diagnostic highlights
		NvimTreeDiagnosticErrorIcon = { fg = colors.error },
		NvimTreeDiagnosticWarnIcon = { fg = colors.warning },
		NvimTreeDiagnosticInfoIcon = { fg = colors.info },
		NvimTreeDiagnosticHintIcon = { fg = colors.hint },

		-- Copy/cut indicators
		NvimTreeCopiedHL = { fg = colors.git_add, bold = true },
		NvimTreeCutHL = { fg = colors.git_delete, bold = true },

		-- Modified file indicators
		NvimTreeModifiedIcon = { fg = colors.git_change },
		NvimTreeModifiedFile = { fg = colors.git_change },

		-- Hidden files
		NvimTreeHiddenDisplay = { fg = colors.fg_dark, italic = true },

		-- Popup menu (for rename, etc.)
		NvimTreePopup = { fg = colors.pmenu_fg, bg = colors.pmenu_bg },

		-- Folder arrow/chevron icons
		NvimTreeOpenedFolderIcon = { fg = colors.function_name },
		NvimTreeClosedFolderIcon = { fg = colors.function_name },

		-- File type specific icons (if using nvim-web-devicons)
		NvimTreeFileIconDefault = { fg = colors.fg },
	}

	-- Apply highlights - nvim-tree highlights work even if nvim-tree isn't loaded yet
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
