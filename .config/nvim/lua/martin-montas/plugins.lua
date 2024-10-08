 vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use('wbthomason/packer.nvim')

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                -- configuration options here, or leave it empty to use the defaults
            }
        end
    }

    use("tpope/vim-fugitive")
    use 'rockerBOO/boo-colorscheme-nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('ThePrimeagen/harpoon')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use "lukas-reineke/indent-blankline.nvim"
    use 'Exafunction/codeium.vim'

    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

