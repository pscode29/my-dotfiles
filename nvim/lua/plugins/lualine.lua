local ok, lualine = pcall(require, "lualine")
if not ok then
  return
end

lualine.setup({
    options = {
	icons_enabled = true,
	theme = "palenight", -- `auto` for auto theme 
    -- Do not show status line name for following screens
	disabled_filetypes = { "NvimTree", "TelescopePrompt" }
	}
})
