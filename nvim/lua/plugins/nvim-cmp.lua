local ok, cmp = pcall(require, "cmp")
if not ok then
	return
end

local ok, lspkind = pcall(require, "lspkind")
if not ok then
	return
end

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- select the current selection on enter
	}), -- sources for autocompletion
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	-- Some appearance settings copied from here - https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#menu-type
	window = {
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			menu = {
				nvim_lsp = "[LSP]",
				buffer = "[Buffer]",
				path = "[Path]",
			},
		}),
	},
})
