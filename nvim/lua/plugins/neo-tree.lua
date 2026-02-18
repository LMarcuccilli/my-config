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
		},

		config = function()
			require("neo-tree").setup({
				filesystem = {
					follow_current_file = { enabled = true },
					hijack_netrw_behavior = "open_current",
					window = {
						preview = {
							auto_preview = true,
						},
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
			local hls = {
				"NeoTreeNormal",
				"NeoTreeNormalNC",
				"NeoTreeFloatBorder",
				"NeoTreeFloatTitle",
				"NeoTreeTitleBar",
			}

			for _, hl in ipairs(hls) do
				vim.api.nvim_set_hl(0, hl, { bg = "none" })
			end
		end,
	},
}

