local opt = vim.opt
local g = vim.g

-- indenting
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- searching
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true

-- ui
opt.number = true
opt.numberwidth = 2
opt.ruler = false
g.termguicolors = true

-- gui
vim.o.guifont = "JetBrainsMono Nerd Font:h15"
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = false

-- other
g.noswapfile = true

