vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.smartindent = true
vim.o.smarttab= true
vim.o.scrolloff = 15
vim.g.netrw_liststyle = 3

vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true
vim.o.swapfile = false

vim.hlsearch = false
vim.o.colorcolumn = "80"
vim.o.signcolumn = "yes"

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
