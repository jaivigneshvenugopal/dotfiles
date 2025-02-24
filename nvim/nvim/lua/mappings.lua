require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- personal maps
local opts = { noremap = true, silent = true }

map("i", "jj", "<ESC>")

-- Quit a buffer
map("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- Move between vim tabs
map("n", "<C-h>", ":bprev<CR>", opts)
map("n", "<C-l>", ":bnext<CR>", opts)

-- Add empty line in normal mode
map("n", "<leader>o", "o<ESC>", opts)
map("n", "<leader>O", "O<ESC>", opts)

-- Center search results and jumps
map("n", "n", "nzz", opts)
map("n", "N", "Nzz", opts)
map("n", "<C-o>", "<C-o>zz", opts)
map("n", "<C-i>", "<C-i>zz", opts)

-- Indent lines
map("n", "<Tab>", ">>_", opts)
map("n", "<S-Tab>", "<<_", opts)
map("i", "<S-Tab>", "<C-D>", opts)
map("v", "<Tab>", ">gv", opts)
map("v", "<S-Tab>", "<gv", opts)

-- Clear highlighting after searching
map("n", "<leader>h", ":noh<CR>", opts)

-- Allow `gf` to open non-existent files in a new tab
map("n", "gf", ":tabnew <cfile><CR>", opts)

-- Open current file in the default program (Linux: `xdg-open`, macOS: `open`, Windows: `start`)
map("n", "<leader>x", ":!xdg-open %<CR><CR>", opts)

-- Put quotes around a word
map("n", '<Leader>"', 'ciw""<Esc>P', opts)
map("n", "<Leader>'", "ciw''<Esc>P", opts)
map("v", '<Leader>"', 'c""<Esc>P', opts)
map("v", "<Leader>'", "c''<Esc>P", opts)

-- Allow repetitive paste
map("x", "p", "pgvy", opts)
