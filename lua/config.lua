local opt = vim.opt
local g = vim.g

-- indenting
opt.tabstop 	            = 4
opt.softtabstop             = 4
opt.shiftwidth	            = 4
opt.expandtab	            = true
opt.smartindent	            = true

-- searching
opt.ignorecase 	            = true
opt.smartcase 	            = true
opt.showmatch 	            = true

-- numbers
opt.number 	                = true
opt.numberwidth             = 2
opt.ruler 	                = false

-- other
vim.g.loaded_netrw          = 1
vim.g.loaded_netrwPlugin    = 1
vim.g.mapleader             = " "
