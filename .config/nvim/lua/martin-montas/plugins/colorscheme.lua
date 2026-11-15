
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                transparent_background = false,
                integrations = {
                    treesitter = true,
                    native_lsp = {
                        enabled = true,
                    },
                    gitsigns = true,
                    telescope = true,
                    which_key = true,
                },
            })

            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
}
