local opt = {
	backspace = vim.opt.backspace + { "nostop" }, -- Don't stop backspace at insert
	clipboard = "unnamedplus", -- Connection to the system clipboard
	cmdheight = 1, -- height of command line
	completeopt = { "menuone", "noselect" }, -- Options for insert mode completion
	copyindent = true, -- Copy the previous indentation on autoindenting
	cursorline = true, -- Highlight the text line of the cursor
	expandtab = true, -- Enable the use of space in tab
	fileencoding = "utf-8", -- File content encoding for the buffer
	fillchars = { eob = " " }, -- Disable `~` on nonexistent lines
	history = 100, -- Number of commands to remember in a history table
	ignorecase = true, -- Case insensitive searching
	iskeyword = "-",
	laststatus = 3, -- globalstatus
	lazyredraw = true, -- lazily redraw screen
	mouse = "a", -- Enable mouse support
	number = true, -- Show numberline
	preserveindent = true, -- Preserve indent structure as much as possible
	pumheight = 10, -- Height of the pop up menu
	relativenumber = true, -- Show relative numberline
	scrolloff = 8, -- Number of lines to keep above and below the cursor
	shiftwidth = 4, -- Number of space inserted for indentation
	showmode = false, -- Disable showing modes in command line
	sidescrolloff = 8, -- Number of columns to keep at the sides of the cursor
	signcolumn = "yes", -- Always show the sign column
	smartcase = true, -- Case sensitivie searching
	splitbelow = true, -- Splitting a new window below the current one
	splitright = true, -- Splitting a new window at the right of the current one
	swapfile = false, -- Disable use of swapfile for the buffer
	tabstop = 4, -- Number of space in a tab
	termguicolors = true, -- Enable 24-bit RGB color in the TUI
	timeoutlen = 300, -- Length of time to wait for a mapped sequence
	undofile = true, -- Enable persistent undo
	updatetime = 300, -- Length of time to wait before triggering the plugin
	whichwrap = "<,>,[,],h,l",
	wrap = false, -- Disable wrapping of lines longer than the width of window
	writebackup = false, -- Disable making a backup before overwriting a files
}

for k, v in pairs(opt) do
	vim.opt[k] = v
end

local g = {
	mapleader = " ",
}

for k, v in pairs(g) do
	vim.g[k] = v
end
