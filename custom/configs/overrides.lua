local M = {}

M.treesitter = {
	ensure_installed = {
		"go",
		"python",
		"rust",
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"markdown",
		"markdown_inline",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"prettier",
		"eslint_d",

		-- c/cpp stuff
		-- "clangd",
		-- "clang-format",

		-- pscode@, python stuff
		-- python language server
		"pyright",
		-- static type checking
		"mypy",
		-- linting
		"ruff",
		-- formatter, prettier is making following wierd color i guess like linting isseus
		"black",
		-- debugger
		"debugpy",

		-- golang stuff
		-- LSP
		"gopls",
		-- formatter
		"gofumpt",
		-- import management
		"goimports-reviser",
		-- manage long go lines
		"golines",
		-- debugger
		"delve",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
