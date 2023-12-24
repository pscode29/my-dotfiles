local null_ls = require("null-ls")

local b = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local sources = {

	-- webdev stuff
	-- Formatter
	b.formatting.deno_fmt, -- choosen deno for ts/js files cuz its very fast!
	b.formatting.prettier.with({ filetypes = { "html", "markdown", "css" } }), -- so prettier works only on these filetypes
	-- eslint_d for linting, it is faster than eslint and supported by mason
	b.diagnostics.eslint_d.with({
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
		},
	}),

	-- Lua
	b.formatting.stylua,

	-- cpp
	-- b.formatting.clang_format,

	-- python pscode@
	-- Static type checking and linting
	b.diagnostics.mypy,
	b.diagnostics.ruff,
	b.formatting.black.with({ filetypes = { "python" } }),

	-- golang
	b.formatting.gofumpt,
	b.formatting.goimports_reviser,
	b.formatting.golines,
}

-- pscode@
-- this is to enable autoformat on save using formatter e.g. black or gofumpt or others
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({
			group = augroup,
			buffer = bufnr,
		})
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end,
		})
	end
end

null_ls.setup({
	debug = true,
	sources = sources,
	on_attach = on_attach,
})
