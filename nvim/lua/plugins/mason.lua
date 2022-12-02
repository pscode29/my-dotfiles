local ok, mason = pcall(require, "mason")
if not ok then
	return
end

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then
	return
end

local ok, mason_null_ls = pcall(require, "mason-null-ls")
if not ok then
	return
end

mason.setup()

mason_lspconfig.setup({
	-- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed
	automatic_installation = true,
})

mason_null_ls.setup({
	-- Whether linters that are set up (via null-ls) should be automatically installed if they're not already installed
	automatic_installation = true,
})
