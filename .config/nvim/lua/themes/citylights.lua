local M = {}

function M.setup()
    local colors = {
        bg = "#1D252C",
        bg_dark = "#171D23",
        bg_float = "#15232D",
        bg_highlight = "#28323A",
        border = "#333F4A",

        fg = "#B7C5D3",
        muted = "#718CA1",
        comment = "#41505E",

        blue = "#5EC4FF",
        string = "#68A1F0",
        cyan = "#70E1E8",
        teal = "#008B94",
        green = "#8BD49C",
        yellow = "#EBBF83",
        orange = "#D98E48",
        red = "#E27E8D",
        pink = "#B62D65",
    }

    vim.opt.background = "dark"
    vim.cmd("highlight clear")
    vim.g.colors_name = "citylights"

    local groups = {
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { fg = colors.fg, bg = colors.bg_float },
        CursorLine = { bg = colors.bg_highlight },
        LineNr = { fg = colors.comment },
        CursorLineNr = { fg = colors.blue, bold = true },

        Comment = { fg = colors.comment, italic = true },
        Constant = { fg = colors.red },
        String = { fg = colors.string },
        Character = { fg = colors.string },
        Number = { fg = colors.red },
        Boolean = { fg = colors.red },

        Identifier = { fg = colors.muted },
        Function = { fg = colors.cyan },
        Statement = { fg = colors.blue },
        Keyword = { fg = colors.blue },
        Operator = { fg = colors.muted },
        Type = { fg = colors.teal },
        Special = { fg = colors.cyan },

        Visual = { bg = colors.bg_highlight },
        Search = { fg = colors.bg, bg = colors.yellow },
        IncSearch = { fg = colors.bg, bg = colors.blue },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.cyan },
        DiagnosticHint = { fg = colors.green },

        Pmenu = { fg = colors.fg, bg = colors.bg_float },
        PmenuSel = { fg = colors.fg, bg = colors.bg_highlight },

        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.blue },
        GitSignsDelete = { fg = colors.red },
    }

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Treesitter
    vim.api.nvim_set_hl(0, "@variable", { fg = colors.muted })
    vim.api.nvim_set_hl(0, "@function", { fg = colors.cyan })
    vim.api.nvim_set_hl(0, "@keyword", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "@string", { fg = colors.string })
    vim.api.nvim_set_hl(0, "@type", { fg = colors.teal })
    vim.api.nvim_set_hl(0, "@comment", { fg = colors.comment, italic = true })
    vim.api.nvim_set_hl(0, "@constant", { fg = colors.red })
end

return M
