
local colors = {
    blue       = "#82aaff",
    cyan       = "#80cbc4",
    green      = "#5C6B41",
    purple     = "#5E416B",
    red        = "#ff5370",
    yellow     = "#ffcb6b",
    bg         = "#18171F",
    surface    = "#112630",
    foreground = "#c3ccdc",
}

local custom_theme = {
    normal = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
        b = { fg = colors.foreground, bg = colors.surface },
        c = { fg = colors.foreground, bg = colors.bg },
    },

    insert = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
    },

    visual = {
        a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
    },

    replace = {
        a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    },

    command = {
        a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    },

    inactive = {
        a = { fg = colors.foreground, bg = colors.bg },
        b = { fg = colors.foreground, bg = colors.bg },
        c = { fg = colors.foreground, bg = colors.bg },
    },
}

return 
{
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("lualine").setup({

            options = {
                theme = custom_theme,
                globalstatus = true,
                section_separators = "",
                component_separators = "",
                disabled_filetypes = {
                    statusline = {},
                },
            },

            sections = {
                lualine_a = {
                },

                lualine_b = {
                    "branch",
                    "diff",
                },

                lualine_c = {
                    {
                        "filename",
                        path = 2,
                        shorting_target = 0,
                        file_status = true,
                        fmt = function(str)
                            return str
                        end,
                        color = {
                            fg = "#90AB94",
                            bg = "#232B33",
                        },
                    },
                },
                lualine_x = {
                    "diagnostics",
                    "filetype",
                },

                lualine_y = {
                },

                lualine_z = {
                    "location",
                },
            },
        })
    end,
}

