return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false, -- load during startup
        priority = 1000, -- load before other plugins
        config = function()
            require("solarized-osaka").setup({
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    functions = {},
                    variables = {},
                    sidebars = "dark",
                    floats = "dark",
                },
                sidebars = { "qf", "help" },
                day_brightness = 0.3,
                hide_inactive_statusline = false,
                dim_inactive = false,
                lualine_bold = false,
                on_colors = function(colors) end,
                on_highlights = function(highlights, colors) end,
            })
            vim.cmd.colorscheme("solarized-osaka")
        end,
    },
}
