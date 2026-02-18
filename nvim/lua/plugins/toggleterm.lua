return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,                -- height for horizontal split or width for vertical
            open_mapping = [[<c-\>]], -- key to toggle terminal
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,   -- allow <Esc> mappings in insert mode
            persist_size = true,
            direction = "float",      -- make it a floating window
            close_on_exit = true,
            float_opts = {
                border = "rounded",
                width = 100,
                height = 30,
                winblend = 3,        -- transparency
            },
        })
    end,
}

