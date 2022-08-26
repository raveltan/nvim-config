-- Leader key
vim.g.mapleader = " "

vim.o.exrc = true -- exec a local vimrc
vim.o.relativenumber = true -- Use relative line number
vim.o.nu = true --Indent current line number
vim.o.hlsearch = false -- Don't highlight search
vim.o.incsearch = true -- jump incrementally to search results
vim.o.hidden = true -- allow hidden buffers
vim.o.errorbells = false -- ding ding!
vim.o.wrap = true -- wrap lines
vim.o.swapfile = false -- don't need no swap files!
vim.o.backup = false -- ... or a backup!
vim.o.undodir = "/Users/raveltanjaya/.undo" -- sets where undo files land
vim.cmd([[set undofile]])

vim.o.scrolloff = 8 -- scroll offwidth so it's not the very bottom
vim.o.colorcolumn = "80" -- bar at 80 chars width
vim.o.signcolumn = "yes" -- always set the far left bar/column
-- vim.o.nocompatible = true
vim.o.mouse = "a" -- always enable mouse mode
vim.o.tabstop = 4 -- Tabs are 4 spaces: Reference - https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.smartindent = true

vim.o.ignorecase = true -- ignore case when searching
vim.o.smartcase = true -- Unless we explicitly use cases in search
vim.o.splitbelow = true -- automagically h split going down
vim.o.splitright = true -- automagically v split going right
vim.opt.listchars = { -- see hidden chars and their colors
	tab = "| ",
	eol = "¬",
	trail = "·",
}
vim.o.list = true
vim.o.updatetime = 100
