local M = {}

function M.setup(colors)
	local highlights = {
		-- LazyGit floating window background
		LazyGitFloat = {
			fg = colors.fg,
			bg = colors.bg,
		},
		LazyGitBorder = {
			fg = colors.border,
			bg = colors.bg,
		},

		-- Terminal window for lazygit
		LazyGitNormal = {
			fg = colors.fg,
			bg = colors.bg,
		},

		-- Tooltips and popups in lazygit
		LazyGitTooltip = {
			fg = colors.fg,
			bg = colors.bg_light,
		},
		LazyGitTooltipBorder = {
			fg = colors.border,
			bg = colors.bg_light,
		},

		-- Override terminal colors for lazygit to ensure transparency
		-- These are applied when lazygit terminal is open
		TerminalNormal = {
			fg = colors.fg,
			bg = colors.bg,
		},
		TerminalNormalFloat = {
			fg = colors.fg,
			bg = colors.bg,
		},

		-- Float title
		FloatTitle = {
			fg = colors.function_name,
			bg = colors.bg,
			bold = true,
		},

		-- General floating window improvements
		NormalFloat = {
			fg = colors.fg,
			bg = colors.bg_light,
		},
		FloatBorder = {
			fg = colors.border,
			bg = colors.bg_light,
		},

		-- Popup menu (for any lazygit menus)
		Pmenu = {
			fg = colors.pmenu_fg,
			bg = colors.pmenu_bg,
		},
		PmenuSel = {
			fg = colors.pmenu_sel_fg,
			bg = colors.pmenu_sel_bg,
		},
		PmenuBorder = {
			fg = colors.border,
			bg = colors.pmenu_bg,
		},

		-- Terminal cursor in lazygit
		TermCursor = {
			fg = colors.bg,
			bg = colors.cursor,
		},
		TermCursorNC = {
			fg = colors.bg,
			bg = colors.cursor,
		},

		-- Status line in terminal mode
		StatusLineTerm = {
			fg = colors.status_fg,
			bg = colors.status_bg,
		},
		StatusLineTermNC = {
			fg = colors.fg_dark,
			bg = colors.status_bg,
		},

		-- For toggleterm integration (if using toggleterm for lazygit)
		ToggleTermNormal = {
			fg = colors.fg,
			bg = colors.bg,
		},
		ToggleTermNormalFloat = {
			fg = colors.fg,
			bg = colors.bg,
		},
		ToggleTermBorder = {
			fg = colors.border,
			bg = colors.bg,
		},

		-- For any git-related highlights that might show in terminal
		GitSignsAdd = {
			fg = colors.git_add,
			bg = colors.bg,
		},
		GitSignsChange = {
			fg = colors.git_change,
			bg = colors.bg,
		},
		GitSignsDelete = {
			fg = colors.git_delete,
			bg = colors.bg,
		},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
