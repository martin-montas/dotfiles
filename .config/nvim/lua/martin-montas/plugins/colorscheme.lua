return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = false,
        terminal_colors = true,
    },
    config = function(_, opts)
        vim.cmd.colorscheme("tokyonight-storm")

        -- vim.api.nvim_command('hi StatusLine guibg=#626262 guifg=#131313')
        -- vim.api.nvim_command('hi Normal guifg=#939393')
    end,
}




