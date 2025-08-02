local M = {}

function M.setup(colors)
	local highlights = {
		-- Identifiers
		["@variable"] = { fg = colors.variable },
		["@variable.builtin"] = { fg = colors.keyword },
		["@variable.parameter"] = { fg = colors.parameter },
		["@variable.member"] = { fg = colors.property },

		-- Constants
		["@constant"] = { fg = colors.constant },
		["@constant.builtin"] = { fg = colors.boolean },
		["@constant.macro"] = { fg = colors.constant },

		-- Modules and namespaces
		["@module"] = { fg = colors.type },
		["@module.builtin"] = { fg = colors.type },

		-- Strings and characters
		["@string"] = { fg = colors.string },
		["@string.documentation"] = { fg = colors.comment },
		["@string.regexp"] = { fg = colors.string },
		["@string.escape"] = { fg = colors.operator },
		["@string.special"] = { fg = colors.operator },
		["@string.special.symbol"] = { fg = colors.property },
		["@string.special.url"] = { fg = colors.info, underline = true },
		["@string.special.path"] = { fg = colors.string },
		["@character"] = { fg = colors.string },
		["@character.special"] = { fg = colors.operator },

		-- Booleans and numbers
		["@boolean"] = { fg = colors.boolean },
		["@number"] = { fg = colors.number },
		["@number.float"] = { fg = colors.number },

		-- Types
		["@type"] = { fg = colors.type },
		["@type.builtin"] = { fg = colors.type },
		["@type.definition"] = { fg = colors.type },
		["@type.qualifier"] = { fg = colors.keyword },

		-- Attributes and properties
		["@attribute"] = { fg = colors.attribute },
		["@attribute.builtin"] = { fg = colors.attribute },
		["@property"] = { fg = colors.property },

		-- Functions
		["@function"] = { fg = colors.function_name },
		["@function.builtin"] = { fg = colors.function_name },
		["@function.call"] = { fg = colors.function_name },
		["@function.macro"] = { fg = colors.function_name },
		["@function.method"] = { fg = colors.function_name },
		["@function.method.call"] = { fg = colors.function_name },
		["@constructor"] = { fg = colors.function_name },

		-- Keywords and operators
		["@keyword"] = { fg = colors.keyword },
		["@keyword.coroutine"] = { fg = colors.keyword },
		["@keyword.function"] = { fg = colors.keyword },
		["@keyword.operator"] = { fg = colors.keyword },
		["@keyword.import"] = { fg = colors.preprocessor },
		["@keyword.storage"] = { fg = colors.keyword },
		["@keyword.repeat"] = { fg = colors.keyword },
		["@keyword.return"] = { fg = colors.keyword },
		["@keyword.debug"] = { fg = colors.keyword },
		["@keyword.exception"] = { fg = colors.keyword },
		["@keyword.conditional"] = { fg = colors.keyword },
		["@keyword.conditional.ternary"] = { fg = colors.operator },
		["@keyword.directive"] = { fg = colors.preprocessor },
		["@keyword.directive.define"] = { fg = colors.preprocessor },

		-- Operators
		["@operator"] = { fg = colors.operator },

		-- Punctuation
		["@punctuation.delimiter"] = { fg = colors.punctuation },
		["@punctuation.bracket"] = { fg = colors.punctuation },
		["@punctuation.special"] = { fg = colors.operator },

		-- Comments
		["@comment"] = { fg = colors.comment, italic = true },
		["@comment.documentation"] = { fg = colors.comment, italic = true },
		["@comment.error"] = { fg = colors.fixme, bold = true },
		["@comment.warning"] = { fg = colors.todo, bold = true },
		["@comment.todo"] = { fg = colors.todo, bold = true },
		["@comment.note"] = { fg = colors.note, bold = true },

		-- Literals
		["@string.doc"] = { fg = colors.comment },

		-- Misc
		["@error"] = { fg = colors.error },
		["@none"] = {},
		["@preproc"] = { fg = colors.preprocessor },

		-- Tags (HTML/XML/JSX)
		["@tag"] = { fg = colors.keyword },
		["@tag.attribute"] = { fg = colors.property },
		["@tag.delimiter"] = { fg = colors.punctuation },

		-- Language specific

		-- Swift specific treesitter groups
		["@keyword.modifier.swift"] = { fg = colors.keyword },
		["@attribute.swift"] = { fg = colors.swift_attribute },
		["@parameter.swift"] = { fg = colors.parameter },
		["@type.builtin.swift"] = { fg = colors.type },
		["@function.builtin.swift"] = { fg = colors.function_name },
		["@variable.builtin.swift"] = { fg = colors.keyword },

		-- Objective-C specific treesitter groups
		["@keyword.directive.objc"] = { fg = colors.objc_directive },
		["@type.builtin.objc"] = { fg = colors.type },
		["@property.objc"] = { fg = colors.property },
		["@parameter.objc"] = { fg = colors.parameter },

		-- Python specific
		["@keyword.function.python"] = { fg = colors.keyword },
		["@constructor.python"] = { fg = colors.type },
		["@function.builtin.python"] = { fg = colors.function_name },
		["@type.builtin.python"] = { fg = colors.type },

		-- JavaScript/TypeScript specific
		["@constructor.javascript"] = { fg = colors.type },
		["@keyword.function.javascript"] = { fg = colors.keyword },
		["@variable.builtin.javascript"] = { fg = colors.keyword },

		-- C/C++ specific
		["@type.builtin.c"] = { fg = colors.type },
		["@keyword.storage.c"] = { fg = colors.keyword },
		["@preproc.c"] = { fg = colors.preprocessor },

		-- Lua specific
		["@constructor.lua"] = { fg = colors.fg },
		["@keyword.function.lua"] = { fg = colors.keyword },
		["@variable.builtin.lua"] = { fg = colors.keyword },

		-- Rust specific
		["@attribute.rust"] = { fg = colors.attribute },
		["@keyword.storage.rust"] = { fg = colors.keyword },
		["@type.builtin.rust"] = { fg = colors.type },

		-- Go specific
		["@keyword.function.go"] = { fg = colors.keyword },
		["@type.builtin.go"] = { fg = colors.type },
		["@function.builtin.go"] = { fg = colors.function_name },

		-- JSON specific
		["@label.json"] = { fg = colors.property },

		-- YAML specific
		["@field.yaml"] = { fg = colors.property },

		-- CSS specific
		["@property.css"] = { fg = colors.property },
		["@type.css"] = { fg = colors.type },
		["@string.css"] = { fg = colors.string },
		["@number.css"] = { fg = colors.number },

		-- HTML specific
		["@tag.html"] = { fg = colors.keyword },
		["@tag.attribute.html"] = { fg = colors.property },
		["@string.html"] = { fg = colors.string },

		-- Markdown specific
		["@markup.heading"] = { fg = colors.function_name, bold = true },
		["@markup.heading.1"] = { fg = colors.function_name, bold = true },
		["@markup.heading.2"] = { fg = colors.function_name, bold = true },
		["@markup.heading.3"] = { fg = colors.function_name, bold = true },
		["@markup.heading.4"] = { fg = colors.function_name },
		["@markup.heading.5"] = { fg = colors.function_name },
		["@markup.heading.6"] = { fg = colors.function_name },
		["@markup.list"] = { fg = colors.keyword },
		["@markup.list.checked"] = { fg = colors.git_add },
		["@markup.list.unchecked"] = { fg = colors.keyword },
		["@markup.link"] = { fg = colors.info },
		["@markup.link.label"] = { fg = colors.info },
		["@markup.link.url"] = { fg = colors.string, underline = true },
		["@markup.raw"] = { fg = colors.string },
		["@markup.raw.block"] = { fg = colors.string },
		["@markup.quote"] = { fg = colors.comment },
		["@markup.math"] = { fg = colors.function_name },
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },

		-- Diff
		["@diff.plus"] = { fg = colors.diff_add_fg, bg = colors.diff_add },
		["@diff.minus"] = { fg = colors.diff_delete_fg, bg = colors.diff_delete },
		["@diff.delta"] = { fg = colors.diff_change_fg, bg = colors.diff_change },

		-- Git commit
		["@text.gitcommit"] = { fg = colors.fg },

		-- URI/URL
		["@text.uri"] = { fg = colors.info, underline = true },

		-- Spell
		["@spell"] = {},
		["@nospell"] = {},
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
