---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
		["<leader>ss"] = {
			"<cmd> :wqa<CR>",
			opts = { noremap = true, silent = true },
			"save and exit all windows",
		},
		["<leader>z"] = {
			"<cmd> :qa<CR>",
			opts = { noremap = true, silent = true },
			"exit all windows without save",
		},
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.dap = {
	plugin = true,
	n = {
		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
		["<leader>dus"] = {
			function()
				local widgets = require("dap.ui.widgets")
				local sidebar = widgets.sidebar(widgets.scopes)
				sidebar.open()
			end,
			"Open debugging sidebar",
		},
	},
}

M.dap_python = {
	plugin = true,
	n = {
		["<leader>dpr"] = {
			function()
				require("dap-python").test_method()
			end,
		},
	},
}

M.dap_go = {
	plugin = true,
	n = {
		["<leader>dgt"] = {
			function()
				require("dap-go").debug_test()
			end,
			"Debug go test",
		},
		["<leader>dgl"] = {
			function()
				require("dap-go").debug_last()
			end,
			"Debug last go test",
		},
	},
}

M.gopher = {
	plugin = true,
	n = {
		["<leader>gtj"] = {
			"<cmd> GoTagAdd json <CR>",
			"Add json struct tags",
		},
		["<leader>gty"] = {
			"<cmd> GoTagAdd yaml <CR>",
			"Add yaml struct tags",
		},
		["<leader>gtrj"] = {
			"<cmd> GoTagRm json <CR>",
			"Remove json struct tags",
		},
		["<leader>gtry"] = {
			"<cmd> GoTagRm yaml <CR>",
			"Remove yaml struct tags",
		},
	},
}

return M
