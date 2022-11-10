local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then
  return
end

-- disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change the colors of the idendent markers
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#56b6c2 ]])
-- change the colors of the folder icon
vim.cmd([[ highlight NvimTreeFolderIcon guifg=#32a891 ]])
vim.opt.termguicolors = true

nvimtree.setup()

