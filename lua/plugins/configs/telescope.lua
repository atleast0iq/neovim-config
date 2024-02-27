return function()
    require("telescope").setup({
        extensions = {
            whaler = {
                directories = {
                    "~",
                    "~/Code",
                    "~/.config",
                },

                auto_cwd = true,
                auto_file_explorer = false,

                theme = {
                     
                },
            },
        },
    })

    require("telescope").load_extension("whaler")
end
