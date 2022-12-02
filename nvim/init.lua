for _, source in ipairs {
    "core.options",
    "core.keymaps",
    "core.packer",
    "colorschemes.tokyonight",
    "plugins.telescope",
    "plugins.nvim-tree",
    "plugins.comment",
    "plugins.nvim-treesitter",
    "plugins.lualine",
    "plugins.gitsigns",
    "plugins.mason",
  } do
    local ok, fault = pcall(require, source)
    if not ok then
        vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
    end
end
