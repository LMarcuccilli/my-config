return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,

		keys = {
			{ "<leader>e", ":Neotree toggle<CR>", desc = "Toggle Neo-tree" },
			{ "<leader>o", ":Neotree focus<CR>", desc = "Focus Neo-tree" },
			{ "<leader>r", ":Neotree reveal<CR>", desc = "Reveal file in tree" },
		},

		config = function()
			require("neo-tree").setup({
				filesystem = {
					follow_current_file = { enabled = true },
					hijack_netrw_behavior = "open_current",
					window = {
						position = "float",
						mappings = {
							["<CR>"] = "open",          -- open file normally
							["v"] = "open_vsplit",      -- vertical split
							["s"] = "open_split",       -- horizontal split
							["t"] = "open_tabnew",      -- open in new tab
							["a"] = "add",              -- create file/folder
							["d"] = "delete",           -- delete file/folder
							["r"] = "rename",           -- rename
						},
					},
				},
			})
		end,
	},
}

