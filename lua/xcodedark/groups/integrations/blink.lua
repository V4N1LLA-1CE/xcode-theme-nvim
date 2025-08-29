local colors = require("xcodedark.colors")

local M = {}

M.setup = function()
	return {
		-- Main blink completion menu
		BlinkCmpMenu = { 
			bg = "NONE", 
			fg = colors.fg 
		},
		BlinkCmpMenuBorder = { 
			bg = "NONE", 
			fg = colors.keyword, -- Pink border like your existing config
			bold = true 
		},
		BlinkCmpMenuSelection = { 
			bg = colors.pmenu_sel_bg, -- Use theme's selection color
			fg = colors.pmenu_sel_fg,
			bold = true 
		},
		
		-- Documentation window
		BlinkCmpDoc = { 
			bg = "NONE", 
			fg = colors.fg 
		},
		BlinkCmpDocBorder = { 
			bg = "NONE", 
			fg = colors.function_name, -- Green border for docs
			bold = true 
		},
		
		-- Scrollbar styling
		PmenuSbar = { 
			bg = "NONE" 
		},
		PmenuThumb = { 
			bg = colors.keyword -- Pink thumb like your config
		},
		
		-- Kind icons and labels (for different completion types)
		BlinkCmpKindText = { fg = colors.fg },
		BlinkCmpKindMethod = { fg = colors.function_name }, -- Green
		BlinkCmpKindFunction = { fg = colors.function_name }, -- Green
		BlinkCmpKindConstructor = { fg = colors.function_name }, -- Green
		BlinkCmpKindField = { fg = colors.property }, -- Green
		BlinkCmpKindVariable = { fg = colors.variable }, -- Green
		BlinkCmpKindClass = { fg = colors.type }, -- Light blue
		BlinkCmpKindInterface = { fg = colors.type }, -- Light blue
		BlinkCmpKindModule = { fg = colors.preprocessor }, -- Pink
		BlinkCmpKindProperty = { fg = colors.property }, -- Green
		BlinkCmpKindUnit = { fg = colors.constant }, -- Light blue
		BlinkCmpKindValue = { fg = colors.constant }, -- Light blue
		BlinkCmpKindEnum = { fg = colors.type }, -- Light blue
		BlinkCmpKindKeyword = { fg = colors.keyword }, -- Pink
		BlinkCmpKindSnippet = { fg = colors.string }, -- Coral
		BlinkCmpKindColor = { fg = colors.attribute }, -- Orange
		BlinkCmpKindFile = { fg = colors.fg },
		BlinkCmpKindReference = { fg = colors.constant }, -- Light blue
		BlinkCmpKindFolder = { fg = colors.type }, -- Light blue
		BlinkCmpKindEnumMember = { fg = colors.constant }, -- Light blue
		BlinkCmpKindConstant = { fg = colors.constant }, -- Light blue
		BlinkCmpKindStruct = { fg = colors.type }, -- Light blue
		BlinkCmpKindEvent = { fg = colors.attribute }, -- Orange
		BlinkCmpKindOperator = { fg = colors.operator }, -- White
		BlinkCmpKindTypeParameter = { fg = colors.parameter }, -- Purple
		
		-- Label highlighting for matched text
		BlinkCmpLabel = { fg = colors.fg },
		BlinkCmpLabelMatch = { fg = colors.search_fg, bg = colors.search, bold = true }, -- Yellow matches
		BlinkCmpLabelDetail = { fg = colors.fg_dark, italic = true },
		BlinkCmpLabelDescription = { fg = colors.comment, italic = true },
		
		-- Source indicators
		BlinkCmpSource = { fg = colors.hint, italic = true },
		
		-- Ghost text (inline suggestions)
		BlinkCmpGhostText = { fg = colors.comment, italic = true },
	}
end

return M