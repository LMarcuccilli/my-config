vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Global keymaps
local opts = { noremap = true, silent = true }

-- <leader>Q → quit/leave
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- <leader>W → write/save
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Splits
vim.keymap.set("n", "<leader>sv", ":vsp<CR><C-w>w")
vim.keymap.set("n", "<leader>sh", ":sp<CR><C-w>w")
vim.keymap.set("n", "<leader>st", ":tabnew<CR>")

-- Copy
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- Terminal exit
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode"})
