vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.background = "light"
--vim.g.gruvbox_contrast_light = 'hard'
vim.cmd [[
	colorscheme base2tone_garden_light
	if has("autocmd")
		augroup templates
			autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
			autocmd BufNewFile *.c 0r ~/.config/nvim/templates/skeleton.c
			autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp
			autocmd BufNewFile *.php 0r ~/.config/nvim/templates/skeleton.php
			autocmd BufNewFile *.rs 0r ~/.config/nvim/templates/skeleton.rs
			autocmd BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html
			autocmd BufNewFile *.js 0r ~/.config/nvim/templates/skeleton.js
		augroup END
	endif

]]

vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9
vim.g.floaterm_title = "($1:$2)"
