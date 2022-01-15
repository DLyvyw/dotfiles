require('packer').startup(function()
    local embedded = vim.g.vscode

    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    -- treesiter
    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require('config.nvim_treesitter')]]
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        config = [[require('config.nvim_lspconfig')]],
        disable = embedded
    }

    use {'williamboman/nvim-lsp-installer', disable = embedded}

    use {'arkav/lualine-lsp-progress', disable = embedded}

    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
        config = [[require('config.navigator')]],
        disable = embedded
    }
    use {'simrat39/symbols-outline.nvim', disable = embedded}

    use {
        'stevearc/aerial.nvim',
        config = [[require('config.aerial')]],
        disable = embedded
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = [[require('config.indent_blankline')]],
        disable = embedded
    }

    use {"folke/which-key.nvim", config = [[require('config.which_key')]]}

    -- cmp
    use {'hrsh7th/cmp-nvim-lsp', disable = embedded}

    use {'hrsh7th/vim-vsnip', disable = embedded}
    use {'hrsh7th/vim-vsnip-integ', disable = embedded}
    use {
        'hrsh7th/nvim-cmp',
        config = [[require('config.nvim_cmp')]],
        disable = embedded
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = [[require('config.telescope')]],
        disable = embedded
    }

    use {'nvim-telescope/telescope-ui-select.nvim', disable = embedded}
    use {'nvim-telescope/telescope-file-browser.nvim', disable = embedded}

    -- rust
    use {'simrat39/rust-tools.nvim', config = [[require('config.rust_tools')]]}

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = [[require('config.gitsigns')]],
        disable = embedded
    }

    use {
        'kyazdani42/nvim-web-devicons',
        config = [[require('config.nvim_web_devicons')]],
        disable = embedded
    }

    use {'joshdick/onedark.vim', disable = embedded}

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = [[require('config.lualine')]],
        disable = embedded
    }

    use {'p00f/nvim-ts-rainbow', disable = embedded}
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons' -- optional, for file icon
        },
        config = [[require('config.nvim_tree')]],
        disable = embedded
    }

    use {'ggandor/lightspeed.nvim', config = [[require('config.lightspeed')]]}

    use {'windwp/nvim-autopairs', config = [[require('config.autopairs')]]}

    use {
        'leoluz/nvim-dap-go',
        requires = {'mfussenegger/nvim-dap'},
        config = [[require('config.nvim_dap')]],
        disable = embedded
    }

    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"},
        config = [[require('config.nvim_dap_ui')]],
        disable = embedded
    }

    use {
        "akinsho/toggleterm.nvim",
        config = [[require('config.toggleterm')]],
        disable = embedded
    }

    use {"TaDaa/vimade"}

end)
