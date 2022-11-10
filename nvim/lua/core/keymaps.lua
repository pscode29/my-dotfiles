local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-----------------------------------------------------------------------------------------
-- The Essential mappings
-----------------------------------------------------------------------------------------
-- Disable Space because leader
keymap("", "<Space>", "<Nop>", opts)
-- jk as replacement for ESC in insert and visual mode
keymap("i", "jk", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)
-- reload vimrc
keymap("n", "<leader>lo", ":source $MYVIMRC<CR>", opts)
-----------------------------------------------------------------------------------------
-- Normal mode mappings
-----------------------------------------------------------------------------------------
-- Navigate between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate between buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Navigate between windows
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Resize windows, does not work in mac, will fix later TODO
keymap("n", "<C-Up>", "<cmd>resize -2<CR>", { desc = "Resize split up" })
keymap("n", "<C-Down>", "<cmd>resize +2<CR>", { desc = "Resize split down" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Resize split left" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Resize split right" })

-- Save current buffer
keymap("n", "<leader>s", ":w<cr>", opts)
-- Save and Exit
keymap("n", "<leader>ss", ":wq<cr>", opts)
-- Force exit
keymap("n", "<leader>q", ":q<cr>", opts)
-----------------------------------------------------------------------------------------
-- Insert mode mappings
-----------------------------------------------------------------------------------------
-- CTRL l to jump end of line from insert mode, I use it when I am inside "" or () or {} or [] etc, I love it
keymap("i", "<C-l>", "<C-o>A", opts)
-----------------------------------------------------------------------------------------
-- Visual mode mappings
-----------------------------------------------------------------------------------------
-- Indent lines in visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- In visual block mode, move selected lines up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-----------------------------------------------------------------------------------------
-- Plugin specific mappings
-- --------------------------------------------------------------------------------------
-- File explorer -  NvimTree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Explorer" })
keymap("n", "<leader>o", "<cmd>NvimTreeFocus<CR>", { desc = "Focus Explorer" })

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>km", "<cmd>Telescope keymaps<cr>", opts)
------------------------------------------------------------------------------------------
