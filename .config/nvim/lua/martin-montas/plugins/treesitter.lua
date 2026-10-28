return {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        branch = "main", 
        lazy = false,
        config = function()
                require("nvim-treesitter").setup({

                        ensure_installed = { "go", "lua" ,"python", "bash", "cpp"},
                        highlight = { enable = true, 
                        additional_vim_regex_highlighting = false,
                },
                })
        end,
}
