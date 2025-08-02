local M = {}

function M.setup(colors)
	local highlights = {
		-- Comments
		Comment = { fg = colors.comment, italic = true },

		-- Constants
		Constant = { fg = colors.constant }, -- Light blue like Xcode
		String = { fg = colors.string },
		Character = { fg = colors.string },
		Number = { fg = colors.number },
		Boolean = { fg = colors.boolean },
		Float = { fg = colors.number },

		-- Identifiers
		Identifier = { fg = colors.variable }, -- Green like Xcode
		Function = { fg = colors.function_name }, -- Green

		-- Statements
		Statement = { fg = colors.keyword },
		Conditional = { fg = colors.keyword },
		Repeat = { fg = colors.keyword },
		Label = { fg = colors.keyword },
		Operator = { fg = colors.operator },
		Keyword = { fg = colors.keyword },
		Exception = { fg = colors.keyword },

		-- PreProcessor
		PreProc = { fg = colors.preprocessor }, -- Pink like keywords/imports
		Include = { fg = colors.preprocessor }, -- Pink for imports
		Define = { fg = colors.preprocessor }, -- Pink
		Macro = { fg = colors.preprocessor }, -- Pink
		PreCondit = { fg = colors.preprocessor }, -- Pink

		-- Types
		Type = { fg = colors.type },
		StorageClass = { fg = colors.keyword },
		Structure = { fg = colors.type },
		Typedef = { fg = colors.type },

		-- Special
		Special = { fg = colors.attribute },
		SpecialChar = { fg = colors.string },
		Tag = { fg = colors.attribute },
		Delimiter = { fg = colors.punctuation },
		SpecialComment = { fg = colors.comment, bold = true },
		Debug = { fg = colors.error },

		-- Underlined (links, etc.)
		Underlined = { fg = colors.info, underline = true },

		-- Ignore
		Ignore = { fg = colors.fg_darker },

		-- Error
		Error = { fg = colors.error, bold = true },

		-- Todo
		Todo = { fg = colors.todo, bold = true },

		-- Additional syntax groups for better coverage

		-- HTML/XML
		htmlTag = { fg = colors.keyword },
		htmlEndTag = { fg = colors.keyword },
		htmlTagName = { fg = colors.type },
		htmlArg = { fg = colors.property },
		htmlString = { fg = colors.string },

		-- CSS
		cssTagName = { fg = colors.type },
		cssClassName = { fg = colors.function_name },
		cssIdentifier = { fg = colors.function_name },
		cssProp = { fg = colors.property },
		cssValueLength = { fg = colors.number },
		cssValueNumber = { fg = colors.number },
		cssColor = { fg = colors.number },
		cssFunction = { fg = colors.function_name },

		-- JavaScript/TypeScript
		javaScriptFunction = { fg = colors.keyword },
		javaScriptIdentifier = { fg = colors.variable }, -- Green
		javaScriptMember = { fg = colors.property }, -- Green
		javaScriptNumber = { fg = colors.number },
		javaScriptNull = { fg = colors.boolean },
		javaScriptUndefined = { fg = colors.boolean },

		-- Python
		pythonBuiltin = { fg = colors.type },
		pythonException = { fg = colors.type },
		pythonDecorator = { fg = colors.attribute },
		pythonDecoratorName = { fg = colors.attribute },

		-- Lua
		luaFunction = { fg = colors.keyword },
		luaTable = { fg = colors.fg },
		luaIn = { fg = colors.keyword },

		-- C/C++
		cIncluded = { fg = colors.string },
		cDefine = { fg = colors.preprocessor }, -- Pink
		cPreCondit = { fg = colors.preprocessor }, -- Pink
		cType = { fg = colors.type },
		cStorageClass = { fg = colors.keyword },
		cppStructure = { fg = colors.keyword },
		cppAccess = { fg = colors.keyword },

		-- Swift specific
		swiftImports = { fg = colors.preprocessor }, -- Pink for imports
		swiftAttribute = { fg = colors.swift_attribute },
		swiftType = { fg = colors.type },
		swiftTypeDeclaration = { fg = colors.keyword },
		swiftVarDeclaration = { fg = colors.keyword },
		swiftFuncDefinition = { fg = colors.keyword },
		swiftInterpolatedWrapper = { fg = colors.operator },

		-- Objective-C specific
		objcDirective = { fg = colors.objc_directive }, -- Pink
		objcStatement = { fg = colors.keyword },
		objcType = { fg = colors.type },
		objcClass = { fg = colors.type },
		objcSuperclass = { fg = colors.type },
		objcProtocol = { fg = colors.type },
		objcProperty = { fg = colors.property }, -- Green
		objcIvar = { fg = colors.variable }, -- Green
		objcMethod = { fg = colors.function_name }, -- Green
		objcMethodArg = { fg = colors.parameter }, -- Green
		objcMethodName = { fg = colors.function_name }, -- Green
		objcString = { fg = colors.string },

		-- JSON
		jsonKeyword = { fg = colors.property }, -- Green
		jsonString = { fg = colors.string },
		jsonNumber = { fg = colors.number },
		jsonBoolean = { fg = colors.boolean },
		jsonNull = { fg = colors.boolean },

		-- YAML
		yamlKey = { fg = colors.property }, -- Green
		yamlString = { fg = colors.string },
		yamlNumber = { fg = colors.number },
		yamlBoolean = { fg = colors.boolean },
		yamlNull = { fg = colors.boolean },
		yamlComment = { fg = colors.comment },

		-- Markdown
		markdownHeadingDelimiter = { fg = colors.keyword },
		markdownH1 = { fg = colors.function_name, bold = true },
		markdownH2 = { fg = colors.function_name, bold = true },
		markdownH3 = { fg = colors.function_name, bold = true },
		markdownH4 = { fg = colors.function_name },
		markdownH5 = { fg = colors.function_name },
		markdownH6 = { fg = colors.function_name },
		markdownCode = { fg = colors.string },
		markdownCodeBlock = { fg = colors.string },
		markdownCodeDelimiter = { fg = colors.operator },
		markdownBlockquote = { fg = colors.comment },
		markdownListMarker = { fg = colors.keyword },
		markdownOrderedListMarker = { fg = colors.keyword },
		markdownRule = { fg = colors.operator },
		markdownLinkText = { fg = colors.info },
		markdownUrl = { fg = colors.string, underline = true },

		-- Diff
		diffAdded = { fg = colors.diff_add_fg, bg = colors.diff_add },
		diffRemoved = { fg = colors.diff_delete_fg, bg = colors.diff_delete },
		diffChanged = { fg = colors.diff_change_fg, bg = colors.diff_change },
		diffFile = { fg = colors.function_name },
		diffNewFile = { fg = colors.git_add },
		diffOldFile = { fg = colors.git_delete },
		diffLine = { fg = colors.info },

		-- Git
		gitcommitComment = { fg = colors.comment },
		gitcommitUnmerged = { fg = colors.git_change },
		gitcommitOnBranch = { fg = colors.fg },
		gitcommitBranch = { fg = colors.function_name },
		gitcommitDiscardedType = { fg = colors.git_delete },
		gitcommitSelectedType = { fg = colors.git_add },
		gitcommitHeader = { fg = colors.fg },
		gitcommitUntrackedFile = { fg = colors.git_ignored },
		gitcommitDiscardedFile = { fg = colors.git_delete },
		gitcommitSelectedFile = { fg = colors.git_add },
		gitcommitUnmergedFile = { fg = colors.git_change },
		gitcommitFile = { fg = colors.fg },

		-- Vim script
		vimCommand = { fg = colors.keyword },
		vimFunction = { fg = colors.function_name },
		vimUserFunc = { fg = colors.function_name },
		vimVariable = { fg = colors.variable },
		vimOption = { fg = colors.property },
		vimHiGroup = { fg = colors.type },
		vimGroup = { fg = colors.type },
		vimSynType = { fg = colors.type },
	}

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
