return {
    'rockerBOO/boo-colorscheme-nvim',
	config = function() 
        vim.api.nvim_command('colorscheme forest_stream')
        vim.api.nvim_command('highlight  Normal guibg=#0d1914')
        vim.api.nvim_command('highlight CursorLine guibg=#990000')
        vim.api.nvim_command('highlight  StatusLine guibg=#838996 guifg=#101010')
    end
}
