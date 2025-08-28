local colors = {
	-- Base colors (Updated with your specifications)
	bg = "#292a31", -- New background color
	bg_alt = "#2D2D30", -- Sidebar and secondary backgrounds
	bg_dark = "#171717", -- Darker variant (debugging panels, etc.)
	bg_light = "#252526", -- Lighter background (popups, floating windows)
	bg_highlight = "#2D2D30", -- Line highlight background

	fg = "#FFFFFF", -- Primary text (variables, identifiers)
	fg_alt = "#D4D4D4", -- Secondary text
	fg_dark = "#9D9D9D", -- Tertiary text
	fg_darker = "#6C7986", -- Comments and dimmed text

	-- Xcode 16 Syntax Colors (Default Dark Theme) - More accurate
	keyword = "#FF7AB2", -- Keywords (var, let, if, class, func) - Pink
	string = "#FF8170", -- String literals - Coral red
	comment = "#6C7986", -- Comments - Muted gray
	number = "#D9C97C", -- Numbers and numeric literals - Warm yellow
	boolean = "#FF7AB2", -- Booleans (true, false) - Same as keywords
	function_name = "#67B7A4", -- Function names and calls - Green (more accurate)
	variable = "#67B7A4", -- Variables and identifiers - Green (not white)
	constant = "#4EB0CC", -- Constants - Light blue (not yellow)
	type = "#6BDFFF", -- Types and classes - Light blue
	property = "#67B7A4", -- Object properties - Green
	parameter = "#D2A8FF", -- Function parameters - Lighter, easier on the eyes purple

	-- Additional purple for specific contexts
	purple = "#D2A8FF", -- Xcode-style lighter purple for parameters/argument types
	purple_light = "#E5C7FF", -- Even lighter purple variant

	-- Language-specific elements
	preprocessor = "#FF7AB2", -- Preprocessor directives, imports - Pink like keywords
	attribute = "#FD8F3F", -- Attributes and decorators - Orange
	operator = "#FFFFFF", -- Operators (+, -, =, etc.) - White
	punctuation = "#FFFFFF", -- Punctuation marks - White

	-- Swift/Objective-C specific
	swift_attribute = "#FD8F3F", -- @objc, @available, etc.
	objc_directive = "#FF7AB2", -- #pragma, #import - Pink like keywords

	-- UI Elements (Updated)
	cursor = "#E91E63", -- New cursor color (red)
	cursor_visual = "#8cd0e3", -- Cursor colour for visual mode (light blue)
	cursor_line = "#2D2D30", -- Current line highlight
	selection = "#E91E63", -- New selection background color
	visual = "#E91E63", -- Visual selection background (same as selection)
	visual_light = "#3D5A7A", -- Lighter visual selection
	search = "#613315", -- Search match background
	search_fg = "#FFCC02", -- Search match text

	-- Gutter and line numbers
	line_number = "#858585", -- Line numbers
	line_number_current = "#FFFFFF", -- Current line number
	gutter_bg = "#292a31", -- Updated gutter background to match new bg

	-- Borders and UI chrome
	border = "#3E3E42", -- Window borders and separators
	separator = "#2D2D30", -- Split window separators

	-- Status bar and tabs
	status_bg = "#2D2D30", -- Status line background
	status_fg = "#CCCCCC", -- Status line text
	tab_active_bg = "#292a31", -- Updated active tab background
	tab_active_fg = "#FFFFFF", -- Active tab text
	tab_inactive_bg = "#2D2D30", -- Inactive tab background
	tab_inactive_fg = "#969696", -- Inactive tab text

	-- Diagnostic colors (matching Xcode 16 issue navigator)
	error = "#F14C4C", -- Error messages - Red
	warning = "#F1C232", -- Warning messages - Yellow
	info = "#0099FF", -- Info messages - Blue
	hint = "#4EB0CC", -- Hint messages - Cyan

	-- Git version control colors
	git_add = "#67B7A4", -- Added/new lines - Green
	git_change = "#F1C232", -- Modified lines - Yellow
	git_delete = "#F14C4C", -- Deleted lines - Red
	git_ignored = "#6C7986", -- Ignored files - Gray

	-- Diff colors
	diff_add = "#263E1C", -- Diff addition background
	diff_add_fg = "#67B7A4", -- Diff addition text
	diff_delete = "#3E1F1C", -- Diff deletion background
	diff_delete_fg = "#F14C4C", -- Diff deletion text
	diff_change = "#3E3B1C", -- Diff change background
	diff_change_fg = "#F1C232", -- Diff change text

	-- Special comment types
	todo = "#F1C232", -- TODO comments - Yellow
	fixme = "#F14C4C", -- FIXME comments - Red
	note = "#0099FF", -- NOTE comments - Blue

	-- Completion and popup menus (enhanced for better visibility)
	pmenu_bg = "#454167", -- Popup menu background (darker for better contrast)
	pmenu_fg = "#CCCCCC", -- Popup menu text
	pmenu_sel_bg = "#E91E63", -- Selected popup item background (brighter blue)
	pmenu_sel_fg = "#FFFFFF", -- Selected popup item text
	pmenu_scrollbar = "#3E3E42", -- Popup menu scrollbar (lighter for visibility)

	-- Additional UI elements
	scrollbar = "#424242", -- Scrollbar track
	scrollbar_thumb = "#686868", -- Scrollbar thumb

	-- Code folding
	fold_bg = "#2D2D30", -- Folded code background
	fold_fg = "#969696", -- Folded code text

	-- Matching elements
	match_paren = "#0099FF", -- Matching parentheses/brackets

	-- Search incremental
	inc_search = "#094771", -- Incremental search background

	-- Spell checking
	spell_bad = "#F14C4C", -- Misspelled words
	spell_cap = "#F1C232", -- Capitalization errors
	spell_rare = "#0099FF", -- Rare words
	spell_local = "#67B7A4", -- Regional spelling

	-- Debug and breakpoints
	debug_breakpoint = "#E51400", -- Breakpoint indicator
	debug_current_line = "#2D5016", -- Current debug line

	-- Terminal colors (matching Xcode's integrated terminal)
	terminal_black = "#292a31", -- Updated to match new background
	terminal_red = "#F14C4C",
	terminal_green = "#67B7A4",
	terminal_yellow = "#F1C232",
	terminal_blue = "#6BDFFF",
	terminal_magenta = "#FF7AB2",
	terminal_cyan = "#4EB0CC",
	terminal_white = "#FFFFFF",

	-- Bright terminal colors
	terminal_bright_black = "#6C7986",
	terminal_bright_red = "#FF6B6B",
	terminal_bright_green = "#5AC8FA",
	terminal_bright_yellow = "#FFD60A",
	terminal_bright_blue = "#007AFF",
	terminal_bright_magenta = "#AF52DE",
	terminal_bright_cyan = "#40E0D0",
	terminal_bright_white = "#FFFFFF",
}

return colors
