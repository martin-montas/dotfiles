return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("onedarkpro").setup({
                options = {
                    transparency = false,
                    terminal_colors = true,
                },
            })
            vim.cmd.colorscheme("sorbet")
            vim.api.nvim_set_hl(0, "@string", {
                fg = "#CF67AA",
            })


        end,
    },
}


-- return {
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         priority = 1000,
--         config = function()
--             require("catppuccin").setup({
--                 flavour = "mocha", -- latte, frappe, macchiato, mocha
--                 transparent_background = false,
--                 integrations = {
--                     treesitter = true,
--                     native_lsp = {
--                         enabled = true,
--                     },
--                     gitsigns = true,
--                     telescope = true,
--                     which_key = true,
--                 },
--             })
-- 
--             vim.cmd.colorscheme("sorbet")
--         end,
--     },
-- }
