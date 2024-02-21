local configs = require("plugins.configs")

local plugins = {
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
        config = function()
            require("catppuccin").setup(configs.catppuccin)
            vim.cmd.colorscheme("catppuccin")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup(configs.treesitter)
        end,
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup()
        end,
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({})
        end,
    },

    {
        "numToStr/Fterm.nvim",
        config = function()
            require("FTerm").setup({})
        end,
    },

    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
}

-- bootstrap package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- initialize package manager
require("lazy").setup(plugins, configs.lazy)

