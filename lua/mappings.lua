local map = vim.keymap.set

-- floating terminal
map({'n', 'i', 'v'}, '<A-i>', '<CMD> lua require("FTerm").toggle() <CR>')
map('t', '<A-i>', '<C-\\><C-n><CMD> lua require("FTerm").toggle() <CR>')

-- file tree
map({'n', 'i', 'v'}, '<A-b>', '<CMD> :NvimTreeToggle <CR><ESC>')
map({'n', 'i', 'v'}, '<A-f>', '<CMD> :NvimTreeFocus <CR><ESC>')

-- telescope
map('n', '<leader>ff', '<CMD> Telescope find_files <CR>')
map('n', '<leader>fa', '<CMD> Telescope find_files follow=true no_ignore=true hidden=true <CR>')
map('n', '<leader>fg', '<CMD> Telescope live_grep <CR>')
