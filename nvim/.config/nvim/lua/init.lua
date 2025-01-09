
-- Local version of options for brevity
local opt = vim.opt
local g = vim.g

-- Set , as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
g.mapleader = ','
g.maplocalleader = ','

-- fix tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true


-- Turn on line numbers and relative line numbers
opt.number = true
opt.relativenumber = true

-- Enable mouse mode (useful for splits)
opt.mouse = 'a'

-- search as characters are entered
opt.incsearch = true

-- highlight search matches
opt.hlsearch = true

-- clear search highlight on <esc><esc>
vim.keymap.set('n', '<Esc><Esc>', '<cmd>nohlsearch<CR>')

-- search case sensitive if you include a mixed case in search
opt.smartcase = true

-- Set font
opt.guifont = "Droid Sans Mono:h14"


-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- neovide refresh rate
g.neovide_refresh_rate = 60

