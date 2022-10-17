local opts = { noremap = true, silent = true }
local opts_nosilent = { noremap = true, silent = false }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Modes {{{
-- Operations to change between modes

-- Command Line Mode - F2
keymap("n", "<F2>", ":", opts_nosilent)
keymap("v", "<F2>", ":", opts_nosilent)
keymap("i", "<F2>", "<ESC>:", opts_nosilent)

-- Press jk fast exit Insert and enter Normal mode
keymap("i", "jk", "<ESC>", opts)

-- }}}

-- Help {{{
-- Help commands

-- }}}

-- MainOperations {{{
-- Main operations like open, save, new, quit, etc ...

-- Save - <leader>w
keymap("n", "<leader>w", ":w<CR>", opts_nosilent)
-- Save All - <leader>wa
keymap("n", "<leader>wa", ":wa<CR>", opts_nosilent)



-- }}}


-- Edit {{{
-- Keymaps for editing operations

-- Stay selection in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better copy in visual mode. Paste and dont loose clipboard
keymap("v", "p", '"_dP', opts)

-- Move selected text up and down - Alt-[Up|Down]
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-Up>", ":m .+1<CR>==", opts)
keymap("v", "<A-Down>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down - Alt-[Up|Down]
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '<-2<CR>gv-gv", opts)


-- }}}


-- TextNavigation {{{


-- }}}

-- WindowManagement {{{
-- Operations to work with windows, tabs, etc ...

-- Close Window - <leader>q
keymap("n", "<leader>q", "<C-w>c", opts)
keymap("v", "<leader>q", "<C-w>c", opts)

-- Close Window and Delete Buffer - <leader>x
keymap("n", "<leader>x", ":bdelete<CR>", opts_nosilent)
keymap("v", "<leader>x", ":bdelete<CR>", opts_nosilent)

-- Vertical Split Window - <leader>s
keymap("n", "<leader>s", "<C-w>v", opts)
keymap("v", "<leader>s", "<C-w>v", opts)
-- Horizontal Split Window - <leader>s
keymap("n", "<leader>sh", "<C-w>s", opts)
keymap("v", "<leader>sh", "<C-w>s", opts)

-- Better window navigation - <leader>[Up|Down|Left|Right]
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader><Left>", "<C-w>h", opts)
keymap("n", "<leader><Up>", "<C-w>j", opts)
keymap("n", "<leader><Down>", "<C-w>k", opts)
keymap("n", "<leader><Right>", "<C-w>l", opts)

-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Explorer - F8, <leader>e
keymap("n", "<F8>", ":Lex 30<cr>", opts)
keymap("n", "<leader>e", ":Lex 30<cr>", opts)
-- In Explorer - -
keymap("n", "-", ":Explore<CR>", opts)

-- Resize with arrows - Ctrl[Up|Down|Left|Right]
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Reset windows sizes - <leader>=
keymap("n", "<leader>=", "<C-w>=", opts)
keymap("v", "<leader>=", "<C-w>=", opts)

-- Navigate buffers - []b
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<[b>", ":bnext<CR>", opts)
keymap("n", "<]b>", ":bprevious<CR>", opts)

-- Previous window
keymap("n", "<leader>p", "<C-w>p", opts)
-- Previous buffer
keymap("n", "<C-F3>", ":e #<CR>", opts)
keymap("v", "<C-F3>", ":e #<CR>", opts)
keymap("i", "<C-F3>", "<ESC>:e #<CR>", opts)

-- Navigate Buffers - F3, <leader>b
keymap("n", "<F3>", ":buffer ", opts_nosilent)
keymap("v", "<F3>", ":buffer ", opts_nosilent)
keymap("i", "<F3>", "<ESC>:buffer ", opts_nosilent)


-- }}}

-- CommandLine {{{
-- Keymaps to work fro mthe command line

-- }}}

-- Development {{{
-- Operations usaully used when programing

-- }}}

-- Terminal {{{
-- Operations usaully used when programing



-- }}}



-- vim: ts=8 ft=lua nowrap fdm=marker 
