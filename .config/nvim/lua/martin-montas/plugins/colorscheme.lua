return {
    'rockerBOO/boo-colorscheme-nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "forest_stream"
    vim.api.nvim_command("hi Normal guibg=#121212")
    vim.api.nvim_command('hi StatusLine guibg=#757575 guifg=#131313')
  end,

}

















