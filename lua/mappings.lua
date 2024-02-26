local map = vim.keymap.set
vim.g.mapleader = " "

-- NvimTree
map("n", "<C-n>", "<cmd> :NvimTreeToggle <cr>", { desc = "Toggle NvimTree" })
map("n", "<leader>ft", "<cmd> :NvimTreeToggle <cr>", { desc = "Toggle NvimTree" })
map("n", "<leader>e", "<cmd> :NvimTreeFocus <cr>", { desc = "Focus NvimTree" })

-- Telescope
map("n", "<leader>ff", "<cmd> :Telescope find_files <cr>", { desc =  "Find files" })
map("n", "<leader>fa", "<cmd> :Telescope find_files follow=true no_ignore=true hidden=true <cr>", { desc =  "Find all" })
map("n", "<leader>fg", "<cmd> :Telescope live_grep <cr>", { desc =  "Live Grep" })
map("n", "<leader>fb", "<cmd> :Telescope buffers <cr>", { desc =  "Find buffers" })
map("n", "<leader>fc", "<cmd> :Telescope colorscheme <cr>", { desc =  "Find colorschemes" })
map("n", "<leader>fd", "<cmd> :Telescope find_files cwd=~/.config <cr>", { desc = "Edit dots" })

-- Create new file
map("n", "<leader>fn", "<cmd> :enew <cr>", { desc = "Create new file "})

-- Commenting
map(
    "n",
    "<leader>/",
    function()
        require("Comment.api").toggle.linewise.current()
    end,
    { desc = "Toggle comment" }
)

map(
    "v",
    "<leader>/",
    "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
    { desc = "Toggle comment "}
)
