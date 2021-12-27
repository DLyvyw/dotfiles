return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- treesiter
    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require('config.nvim_treesitter')]]
    }

    -- LSP
    use {'neovim/nvim-lspconfig', config = [[require('config.nvim_lspconfig')]]}

    use {'williamboman/nvim-lsp-installer'}
    use {'ray-x/navigator.lua', 
		requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
        config = [[require('config.navigator')]]
		}

    -- cmp
    use {'hrsh7th/nvim-cmp', config = [[require('config.nvim_cmp')]]}

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = [[require('config.telescope')]]
    }

    -- rust
    use {'simrat39/rust-tools.nvim', config = [[require('config.rust_tools')]]}

    use {
        'crispgm/nvim-go',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = [[require('config.nvim_go')]],
        disable = true
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = [[require('config.gitsigns')]]
    }

    use {
        'kyazdani42/nvim-web-devicons',
        config = [[require('config.nvim_web_devicons')]]
    }

    use { 'joshdick/onedark.vim' }
    use { 'vim-airline/vim-airline' }
    use { 'frazrepo/vim-rainbow' }
    use { 'preservim/nerdtree' }
    use { 'easymotion/vim-easymotion' }
	
	use { 'leoluz/nvim-dap-go' , 
		requires = { 'mfussenegger/nvim-dap' },
		config = [[require('config.nvim_dap')]]
    }

end)
