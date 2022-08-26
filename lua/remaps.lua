local map = vim.api.nvim_set_keymap
local options = { noremap = true }

-- Change panes on vim ctrl mappings
map("n", "<C-h>", "<C-w>h", options)
map("n", "<C-j>", "<C-w>j", options)
map("n", "<C-k>", "<C-w>k", options)
map("n", "<C-l>", "<C-w>l", options)

local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<C-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<C->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
--map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
--map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
--map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
--map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
--map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
--map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
--map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
--map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
--map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
--map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<C-i>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<C-c>", "<Cmd>BufferClose<CR>", opts)
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
