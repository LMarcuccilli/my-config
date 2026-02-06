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
vim.keymap.set("v", "j", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "k", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
-- In insert mode
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", {silent = true})
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", {silent = true})
-- In normal mode
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Terminal exit
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode"})

-- New line in insert mode
vim.keymap.set("i", "<A-Enter>", "<Esc>o")

-- Naviguate
vim.keymap.set("n", "<C-Right>", "<C-w>w")
vim.keymap.set("n", "<C-Left>", "<C-w>W")
