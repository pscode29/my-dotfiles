-- auto install packer
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocmd to reload Neovim when this file is changed and saved
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])

-- import packer safely
local ok, packer = pcall(require, "packer")
if not ok then
	return
end

-- Define plugins that packer should install
packer.startup({function(use)
    -- Packer install packer kind of thing
    use "wbthomason/packer.nvim"
    -- Lua functions
    use "nvim-lua/plenary.nvim"
    -- Popup API
    use "nvim-lua/popup.nvim"
    -- Icons
    use "kyazdani42/nvim-web-devicons"
    -- Colorschemes
    use 'folke/tokyonight.nvim'
    -- Telescope - the awesome fuzzy finder
    use "nvim-telescope/telescope.nvim"
    -- File Explorer
    use "nvim-tree/nvim-tree.lua"
    -- Comment
    use "numToStr/Comment.nvim"
    -- Treesitter - this enables better syntax highlighting among other things
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    }
    -- Statusline
    use "nvim-lualine/lualine.nvim"
    -- git signs
    use "lewis6991/gitsigns.nvim"
    -- LSP installer
    use("williamboman/mason.nvim") -- This plugin lets you install and manage LSP servers
    use("williamboman/mason-lspconfig.nvim") -- Links mason and lspconfig plugins
    use("jayp0521/mason-null-ls.nvim") -- Links mason and null-ls








    if packer_bootstrap then
      require("packer").sync()
    end
  end,

-- following config gives packer a rounded pop window
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    }
  },
})
--------------------------------------- Command reference ------------------------------------
-- Regenerate compiled loader file
-- :PackerCompile

-- Remove any disabled or unused plugins
-- :PackerClean

-- Clean, then install missing plugins
-- :PackerInstall

-- Clean, then update and install plugins
-- :PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
-- :PackerSync

-- Loads opt plugin immediately
-- :PackerLoad completion-nvim ale
------------------------------------------------------------------------------------------------
