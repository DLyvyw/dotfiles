require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- treesiter
    use { 'nvim-treesitter/nvim-treesitter',
        config = [[require('config.nvim_treesitter')]] }

    -- LSP
    use {'neovim/nvim-lspconfig',
        config = [[require('config.nvim_lspconfig')]]}

    use {'williamboman/nvim-lsp-installer'}
    use {'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
        config = [[require('config.navigator')]] }
    use {'simrat39/symbols-outline.nvim'}

    use {'stevearc/aerial.nvim',
        config = [[require('config.aerial')]] }

    use { "lukas-reineke/indent-blankline.nvim",
        config = [[require('config.indent_blankline')]] }

    use {
          "folke/which-key.nvim",
        config = [[require('config.which_key')]] }

    -- cmp
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/vim-vsnip'}
    use {'hrsh7th/vim-vsnip-integ' }
    use {'hrsh7th/nvim-cmp',
        config = [[require('config.nvim_cmp')]]}

    -- telescope
    use { 'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = [[require('config.telescope')]] }

    use {'nvim-telescope/telescope-ui-select.nvim' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }

    -- rust
    use {'simrat39/rust-tools.nvim',
        config = [[require('config.rust_tools')]]}

    use { 'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = [[require('config.gitsigns')]] }

    use { 'kyazdani42/nvim-web-devicons',
        config = [[require('config.nvim_web_devicons')]] }


    use { 'joshdick/onedark.vim' }

    use { 'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = [[require('config.lualine')]] }
    use {'arkav/lualine-lsp-progress'}

--    use { 'frazrepo/vim-rainbow' }
    use { 'p00f/nvim-ts-rainbow'}
--    use { 'preservim/nerdtree' }
    use { 'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = [[require('config.nvim_tree')]] }

---    use { 'phaazon/hop.nvim', config = [[require('config.hop')]] }

    use { 'ggandor/lightspeed.nvim',
        config = [[require('config.lightspeed')]] }

    use { 'windwp/nvim-autopairs',
        config = [[require('config.autopairs')]] }

    use { 'leoluz/nvim-dap-go',
        requires = { 'mfussenegger/nvim-dap' },
        config = [[require('config.nvim_dap')]] }

    use {"akinsho/toggleterm.nvim",
        config = [[require('config.toggleterm')]] }

end)
