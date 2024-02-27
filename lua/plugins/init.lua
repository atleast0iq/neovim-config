local configs = require("plugins.configs")
local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require("nvim-treesitter.configs").setup(configs.treesitter)
        end,
    },

    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
        lazy = false,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                background = { light = "latte", dark = "mocha" },
                transparent_background = false,
            })

            vim.cmd.colorscheme("catppuccin")
        end,
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        lazy = false,
        opts = {},
    },

    {
        "numToStr/Comment.nvim",
        lazy = false,
        opts = {},
    },

    {
        "max397574/better-escape.nvim",
        lazy = false,
        opts = {
            mapping = { "jk", "jj", },
            keys = "<esc>",
        },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = false,
        config = function()
            require("ibl").setup({
                exclude = {
                    filetypes = {
                        "help",
                        "terminal",
                        "lazy",
                        "dashboard",
                    },
                },
            })
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        opts = {
            disabled_filetypes = {
                statusline = {
                    "NVimTree",
                    "dashboard",
                    "TelescopePrompt",
                },
            },
        },
    },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        opts = {},
    },

    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        lazy = false,
        dependencies = { 
            "nvim-lua/plenary.nvim",
            "SalOrak/whaler",
        },
        config = configs.telescope,
    },

    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = configs.dashboard,
    },
    
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
}

require("lazy").setup(plugins, configs.lazy)

