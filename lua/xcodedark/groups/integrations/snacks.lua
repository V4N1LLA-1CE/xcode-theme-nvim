local colors = require("xcodedark.colors")

local M = {}

M.setup = function()
	return {
		-- Main picker UI elements
		SnacksPickerFile = { fg = colors.fg, bg = "NONE" },
		SnacksPickerDir = { fg = colors.type, bold = true }, -- Bright blue for directories
		SnacksPickerPath = { fg = colors.fg_dark },
		SnacksPickerPathHidden = { fg = colors.comment, italic = true },
		SnacksPickerPathIgnored = { fg = colors.comment, italic = true },
		
		-- Picker UI elements
		SnacksPickerPrompt = { fg = colors.keyword, bold = true }, -- Pink prompt
		SnacksPickerMatch = { fg = colors.search_fg, bg = colors.search, bold = true }, -- Yellow matches
		SnacksPickerBorder = { fg = colors.border },
		SnacksPickerList = { fg = colors.fg, bg = colors.bg_light },
		SnacksPickerListCursorLine = { bg = colors.bg_highlight },
		SnacksPickerTitle = { fg = colors.function_name, bold = true }, -- Green title
		SnacksPickerPreview = { fg = colors.fg },
		SnacksPickerPreviewBorder = { fg = colors.border },
		
		-- Git status highlights (vibrant colors)
		SnacksPickerGitStatusStaged = { fg = colors.git_add, bold = true },
		SnacksPickerGitStatusAdded = { fg = colors.git_add, bold = true },
		SnacksPickerGitStatusDeleted = { fg = colors.git_delete, bold = true },
		SnacksPickerGitStatusIgnored = { fg = colors.git_ignored, italic = true },
		SnacksPickerGitStatusModified = { fg = colors.git_change, bold = true },
		SnacksPickerGitStatusRenamed = { fg = colors.purple, bold = true },
		SnacksPickerGitStatusUnmerged = { fg = colors.error, bold = true },
		SnacksPickerGitStatusUntracked = { fg = colors.constant, bold = true }, -- Light blue for untracked
		
		-- Diagnostic highlights
		SnacksPickerDiagnosticError = { fg = colors.error, bold = true },
		SnacksPickerDiagnosticWarn = { fg = colors.warning, bold = true },
		SnacksPickerDiagnosticHint = { fg = colors.hint, bold = true },
		SnacksPickerDiagnosticInfo = { fg = colors.info, bold = true },
		
		-- LSP status highlights
		SnacksPickerLspUnavailable = { fg = colors.fg_darker, italic = true },
		SnacksPickerLspEnabled = { fg = colors.git_add, bold = true },
		SnacksPickerLspDisabled = { fg = colors.error, italic = true },
		SnacksPickerLspAttached = { fg = colors.function_name, bold = true },
		
		-- File type and symbol highlights (using vibrant xcode colors)
		SnacksPickerIconArray = { fg = colors.constant }, -- Light blue
		SnacksPickerIconBoolean = { fg = colors.boolean }, -- Pink
		SnacksPickerIconClass = { fg = colors.type }, -- Light blue
		SnacksPickerIconConstant = { fg = colors.constant }, -- Light blue
		SnacksPickerIconConstructor = { fg = colors.function_name }, -- Green
		SnacksPickerIconEnum = { fg = colors.type }, -- Light blue
		SnacksPickerIconEnumMember = { fg = colors.constant }, -- Light blue
		SnacksPickerIconEvent = { fg = colors.attribute }, -- Orange
		SnacksPickerIconField = { fg = colors.property }, -- Green
		SnacksPickerIconFile = { fg = colors.fg },
		SnacksPickerIconFolder = { fg = colors.type, bold = true }, -- Bright blue
		SnacksPickerIconFunction = { fg = colors.function_name }, -- Green
		SnacksPickerIconInterface = { fg = colors.type }, -- Light blue
		SnacksPickerIconKeyword = { fg = colors.keyword }, -- Pink
		SnacksPickerIconMethod = { fg = colors.function_name }, -- Green
		SnacksPickerIconModule = { fg = colors.preprocessor }, -- Pink
		SnacksPickerIconNamespace = { fg = colors.type }, -- Light blue
		SnacksPickerIconNull = { fg = colors.keyword }, -- Pink
		SnacksPickerIconNumber = { fg = colors.number }, -- Yellow
		SnacksPickerIconObject = { fg = colors.type }, -- Light blue
		SnacksPickerIconOperator = { fg = colors.operator }, -- White
		SnacksPickerIconPackage = { fg = colors.preprocessor }, -- Pink
		SnacksPickerIconProperty = { fg = colors.property }, -- Green
		SnacksPickerIconString = { fg = colors.string }, -- Coral red
		SnacksPickerIconStruct = { fg = colors.type }, -- Light blue
		SnacksPickerIconTypeParameter = { fg = colors.parameter }, -- Purple
		SnacksPickerIconVariable = { fg = colors.variable }, -- Green
		
		-- Additional vibrant highlights
		SnacksPickerCount = { fg = colors.number, italic = true }, -- Yellow count
		SnacksPickerEmpty = { fg = colors.comment, italic = true },
		SnacksPickerHelp = { fg = colors.hint, italic = true },
		SnacksPickerIcon = { fg = colors.function_name }, -- Default icon color
		SnacksPickerInfo = { fg = colors.info },
		SnacksPickerInput = { fg = colors.fg, bg = colors.bg_light },
		SnacksPickerInputBorder = { fg = colors.keyword }, -- Pink border for input
		SnacksPickerInputPrompt = { fg = colors.keyword, bold = true }, -- Pink prompt
		SnacksPickerLine = { fg = colors.fg },
		SnacksPickerSelect = { fg = colors.selection, bold = true },
		SnacksPickerStatus = { fg = colors.status_fg, bg = colors.status_bg },
		SnacksPickerText = { fg = colors.fg },
		
		-- Special vibrant accents
		SnacksPickerHighlight = { fg = colors.search_fg, bg = colors.search, bold = true },
		SnacksPickerSelection = { bg = colors.visual, fg = colors.fg },
		SnacksPickerCursor = { fg = colors.cursor, bold = true },
		SnacksPickerVisual = { bg = colors.visual },
	}
end

return M