local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
	return
end

treesitter.setup({
	-- `false` will disable the whole extension
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotag
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"go",
		"python",
		"lua",
		"comment",
		"json",
		"yaml",
		"markdown",
		"bash",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- automatically install missing parsers when entering buffer
	auto_install = true,
})
