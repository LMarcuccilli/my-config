return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,          -- always load at startup
		build = ":TSUpdate",   -- updates parsers after install
		config = function()
			require("nvim-treesitter").setup({
				-- List of languages you want parsers for
				ensure_installed = { "c", "cpp", "lua", "python", "javascript", "html", "css" },

				-- Enable syntax highlighting
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},

				-- Enable indentation based on syntax tree
				indent = {
					enable = true,
				},
			})
		end,
	},
}

