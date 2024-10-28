local map = vim.api.nvim_set_keymap

vim.g.mapleader = ","

-- Default
map("n", "<S-t>", ":tabedit ", {})
map("n", "<S-h>", "<CMD>tabprevious<CR>", {})
map("n", "<S-l>", "<CMD>tabnext<CR>", {})
map("n", "<S-q>", "<CMD>tabclose<CR>", {})

-- Floaterm
map("n", "<leader>t", "<CMD>FloatermToggle<CR>", {})
map("t", "<leader>t", "<CMD>FloatermToggle<CR>", {})
map("n", "<leader>h", "<CMD>FloatermPrevious<CR>", {})
map("n", "<leader>l", "<CMD>FloatermNext<CR>", {})
map("n", "<leader>j", "<CMD>FloatermKill<CR>", {})
map("n", "<leader>k", "<CMD>FloatermNew<CR>", {})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
