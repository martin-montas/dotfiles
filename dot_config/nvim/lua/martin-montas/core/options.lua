local  g = vim.g
local  o = vim.o

vim.api.nvim_command('set jumpoptions+=view')
vim.api.nvim_command('set nowrap')
vim.api.nvim_command('filetype plugin indent on')
o.termguicolors = true
g.background = 'dark'
vim.api.nvim_command('syntax on')
-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4

o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂' 
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true
g.colorcolumn = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

o.history = 50
g.netrw_banner = 0
g.netrw_liststyle = 0
g.netrw_browse_split = 0
g.netrw_altv = 1
g.netrw_winsize = 12
o.splitright = true
o.splitbelow = true
g.do_filetype_lua = 1
g.mapleader = ' '
g.maplocalleader = ' '
vim.g.codeium_enabled = true
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Highlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.cmd([[
        highlight @markup.strong gui=bold guifg=#FF0000 cterm=bold ctermfg=Red
        ]])
    end
})

vim.opt.hlsearch = true
-- vim.api.nvim_command('hi cursorLine guibg=#4B1E22')
vim.api.nvim_command('colorscheme solarized-osaka')
vim.api.nvim_command('hi Normal guibg=#000f14')
-- vim.api.nvim_command('hi StatusLine guibg=#808080 guifg=#131313')

