return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
			{ "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Help Tags" },
		},
		config = function()
			-- Optional: extra setup
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					prompt_prefix = "🔍 ",
					mappings = {
						i = {
							["<C-h>"] = actions.which_key,
						},
					},
				},
			})

			local hls = {
				"TelescopeNormal",
				"TelescopeBorder",
				"TelescopePromptNormal",
				"TelescopeResultNormal",
				"TelescopePreviewNormal",
			}

			for _, hl in ipairs(hls) do
				vim.api.nvim_set_hl(0, hl, { bg = "none" })
			end
		end,
	},
}

