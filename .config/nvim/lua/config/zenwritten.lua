local M = {}

function M.apply()
    local overrides = {
        -- Comments
        Comment = { fg = "#77766f", italic = false },
        ["@comment"] = { fg = "#77766f", italic = false },

        -- Strings
        String = { fg = "#a5a995" },
        ["@string"] = { fg = "#a5a995" },

        -- Functions
        Function = { fg = "#aaa69d" },
        ["@function"] = { fg = "#aaa69d" },
        ["@function.call"] = { fg = "#aaa69d" },

        -- Keywords
        Keyword = { fg = "#99958e" },
        ["@keyword"] = { fg = "#99958e" },

        -- Types
        Type = { fg = "#aaa397" },
        ["@type"] = { fg = "#aaa397" },

        -- Properties and variables
        Identifier = { fg = "#b5b0a6" },
        ["@variable"] = { fg = "#b5b0a6" },
        ["@property"] = { fg = "#aaa69d" },

        -- Constants
        Constant = { fg = "#aaa69d" },
        ["@constant"] = { fg = "#aaa69d" },

        -- Operators and punctuation
        Operator = { fg = "#88847e" },
        ["@operator"] = { fg = "#88847e" },
        ["@punctuation"] = { fg = "#88847e" },

        -- C/C++ preprocessor
        PreProc = { fg = "#99958e" },
        Include = { fg = "#99958e" },
        Define = { fg = "#99958e" },
        Macro = { fg = "#99958e" },

        ["@keyword.directive"] = { fg = "#99958e" },
        ["@preproc"] = { fg = "#99958e" },

        -- C/C++ memory keywords
        ["@keyword.operator"] = { fg = "#9b8d7f" },
        ["@keyword"] = { fg = "#99958e" },

        -- C/C++ types
        ["@type.builtin"] = { fg = "#aaa397" },
        ["@type"] = { fg = "#aaa397" },
        -- Control flow
        Conditional = { fg = "#99958e" },
        ["@conditional"] = { fg = "#99958e" },

        -- Return and other keywords
        Statement = { fg = "#99958e" },
        ["@keyword"] = { fg = "#99958e" },
        ["@keyword.return"] = { fg = "#9b8d7f" },



    }

    for group, opts in pairs(overrides) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
