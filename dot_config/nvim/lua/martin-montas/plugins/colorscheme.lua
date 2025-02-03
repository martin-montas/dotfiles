return {
    	'rockerBOO/boo-colorscheme-nvim',
	config = function() 
		vim.api.nvim_command('colorscheme forest_stream')
        vim.api.nvim_command('highlight  StatusLine guibg=#838996 guifg=#111111')
	end
}
