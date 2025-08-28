local M = {}

function M.setup(colors)
	local highlights = {
		-- Editor UI (with font weight adjustments)
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_light },
		NormalNC = { fg = colors.fg, bg = colors.bg },

		-- Cursor and lines (updated colors with enhanced cursor settings)
		Cursor = { fg = colors.bg, bg = colors.cursor },
		CursorInsert = { fg = colors.bg, bg = colors.cursor },
		CursorVisual = { fg = colors.bg, bg = colors.cursor_visual },
		CursorReplace = { fg = colors.bg, bg = colors.cursor },
		CursorCommand = { fg = colors.bg, bg = colors.cursor },
		lCursor = { fg = colors.bg, bg = colors.cursor },
		CursorLine = { bg = colors.cursor_line },
		CursorLineNr = { fg = colors.cursor, bold = true, underline = true },
		CursorColumn = { bg = colors.cursor_line },

		-- Line numbers and gutter
		LineNr = { fg = colors.line_number, bg = colors.gutter_bg },
		SignColumn = { bg = colors.gutter_bg },
		FoldColumn = { fg = colors.line_number, bg = colors.gutter_bg },

		-- Visual selections (updated colors)
		Visual = { bg = colors.visual },
		VisualNOS = { bg = colors.visual },

		-- Search
		Search = { fg = colors.search_fg, bg = colors.search },
		IncSearch = { fg = colors.fg, bg = colors.inc_search },
		CurSearch = { fg = colors.search_fg, bg = colors.search },

		-- Windows and splits
		WinSeparator = { fg = colors.separator },
		VertSplit = { fg = colors.separator },

		-- Status line
		StatusLine = { fg = colors.status_fg, bg = colors.status_bg },
		StatusLineNC = { fg = colors.fg_dark, bg = colors.status_bg },

		-- Tabs (built-in vim tabs)
		TabLine = { fg = colors.tab_inactive_fg, bg = colors.tab_inactive_bg },
		TabLineFill = { bg = colors.tab_inactive_bg },
		TabLineSel = { fg = colors.tab_active_fg, bg = colors.tab_active_bg, bold = true },

		-- Floating windows and borders (important for transparency)
		FloatBorder = { fg = colors.border, bg = colors.bg_light },
		FloatTitle = { fg = colors.function_name, bg = colors.bg_light, bold = true },
		FloatFooter = { fg = colors.fg_dark, bg = colors.bg_light },

		-- Terminal colors (for integrated terminal and lazygit)
		Terminal = { fg = colors.fg, bg = colors.bg },
		TerminalNormal = { fg = colors.fg, bg = colors.bg },
		TerminalNormalFloat = { fg = colors.fg, bg = colors.bg },
		TermCursor = { fg = colors.bg, bg = colors.cursor },
		TermCursorNC = { fg = colors.bg, bg = colors.cursor },

		-- Popup menus (using custom background color that overrides transparency)
		Pmenu = { fg = colors.pmenu_fg, bg = "#2e303e" },
		PmenuSel = { fg = colors.pmenu_sel_fg, bg = colors.pmenu_sel_bg },
		PmenuSbar = { bg = "#2e303e" },
		PmenuThumb = { bg = colors.scrollbar_thumb },

		-- Completion menu kinds (with consistent background)
		CmpItemAbbr = { fg = colors.pmenu_fg, bg = "#2e303e" },
		CmpItemAbbrDeprecated = { fg = colors.fg_dark, bg = "#2e303e", strikethrough = true },
		CmpItemAbbrMatch = { fg = colors.function_name, bg = "#2e303e", bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.function_name, bg = "#2e303e" },
		CmpItemKind = { fg = colors.type, bg = "#2e303e" },
		CmpItemMenu = { fg = colors.fg_dark, bg = "#2e303e" },

		-- Scrollbar
		ScrollbarHandle = { bg = colors.scrollbar_thumb },

		-- Folding
		Folded = { fg = colors.fold_fg, bg = colors.fold_bg },

		-- Matching parentheses
		MatchParen = { fg = colors.match_paren, bold = true },

		-- Messages
		ErrorMsg = { fg = colors.error },
		WarningMsg = { fg = colors.warning },
		ModeMsg = { fg = colors.fg },
		MoreMsg = { fg = colors.info },

		-- Question prompts
		Question = { fg = colors.info },

		-- Directory listings
		Directory = { fg = colors.function_name },

		-- Concealed text
		Conceal = { fg = colors.fg_dark },

		-- Non-text elements
		NonText = { fg = colors.fg_darker },
		EndOfBuffer = { fg = colors.bg },

		-- Special keys
		SpecialKey = { fg = colors.fg_darker },

		-- Wild menu (command completion)
		WildMenu = { fg = colors.pmenu_sel_fg, bg = colors.pmenu_sel_bg },

		-- Color column
		ColorColumn = { bg = colors.bg_highlight },

		-- Spell checking
		SpellBad = { fg = colors.spell_bad, undercurl = true },
		SpellCap = { fg = colors.spell_cap, undercurl = true },
		SpellRare = { fg = colors.spell_rare, undercurl = true },
		SpellLocal = { fg = colors.spell_local, undercurl = true },

		-- Diagnostic colors (built-in)
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warning },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.hint },

		DiagnosticVirtualTextError = { fg = colors.error },
		DiagnosticVirtualTextWarn = { fg = colors.warning },
		DiagnosticVirtualTextInfo = { fg = colors.info },
		DiagnosticVirtualTextHint = { fg = colors.hint },

		DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

		-- QuickFix and Location lists
		QuickFixLine = { bg = colors.bg_highlight },

		-- Title
		Title = { fg = colors.function_name, bold = true },

		-- Debug
		debugPC = { bg = colors.debug_current_line },
		debugBreakpoint = { fg = colors.debug_breakpoint, bold = true },
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
