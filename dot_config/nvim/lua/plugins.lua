
vim.cmd [[packadd packer.nvim]]
vim.cmd [[packadd lightspeed.nvim]]

require('packer').startup({function()

    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- navigation
    use {
        'ggandor/lightspeed.nvim',
        config = [[require('config.lightspeed')]]
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = [[require('config.telescope')]],
    }
    use {'nvim-telescope/telescope-ui-select.nvim'}
    use {'nvim-telescope/telescope-file-browser.nvim'}

    -- themes
    use { 'joshdick/onedark.vim', }

    -- icons
    use {
        'kyazdani42/nvim-web-devicons',
        config = [[require('config.nvim_web_devicons')]],
    }

    -- treesiter
    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require('config.nvim_treesitter')]]
    }

    -- pairs
    use {'p00f/nvim-ts-rainbow'}
    use {
        'windwp/nvim-autopairs',
        config = [[require('config.autopairs')]]
    }
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = [[require('config.indent_blankline')]],
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        config = [[require('config.nvim_lspconfig')]],
    }

    use { 'williamboman/nvim-lsp-installer' }

    use { 'arkav/lualine-lsp-progress' }

    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
        config = [[require('config.navigator')]],
    }

    -- symbols outline
    use { 'simrat39/symbols-outline.nvim' }

    use {
        'stevearc/aerial.nvim',
        config = [[require('config.aerial')]],
    }

    -- key helpers
    use {
        "folke/which-key.nvim",
        config = [[require('config.which_key')]]
    }

    -- cmp
    use {
        'hrsh7th/nvim-cmp',
        config = [[require('config.nvim_cmp')]],
    }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/vim-vsnip-integ' }


    -- rust
    use {
        'simrat39/rust-tools.nvim',
        config = [[require('config.rust_tools')]]
    }

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = [[require('config.gitsigns')]],
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = [[require('config.lualine')]],
    }

    -- explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons' -- optional, for file icon
        },
        config = [[require('config.nvim_tree')]],
    } 

    -- DAP
    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"},
        config = [[require('config.nvim_dap_ui')]],
    }

    -- terminal
    use {
        "akinsho/toggleterm.nvim",
        config = [[require('config.toggleterm')]],
    }

    -- fade inactive windows
    use {"TaDaa/vimade"}

end,
config = {
    opt_default = true,
    display = {
        open_fn = require('packer.util').float,
    }
} })

if not vim.g.vscode 
then
    vim.cmd [[packadd aerial.nvim]]
    vim.cmd [[packadd cmp-nvim-lsp]]
    vim.cmd [[packadd gitsigns.nvim]]
    vim.cmd [[packadd guihua.lua]]
    vim.cmd [[packadd indent-blankline.nvim]]
    vim.cmd [[packadd lualine-lsp-progress]]
    vim.cmd [[packadd lualine.nvim]]
    vim.cmd [[packadd navigator.lua]]
    vim.cmd [[packadd nvim-autopairs]]
    vim.cmd [[packadd nvim-cmp]]
    vim.cmd [[packadd nvim-dap]]
    vim.cmd [[packadd nvim-dap-ui]]
    vim.cmd [[packadd nvim-lsp-installer]]
    vim.cmd [[packadd nvim-tree.lua]]
    vim.cmd [[packadd nvim-treesitter]]
    vim.cmd [[packadd nvim-ts-rainbow]]
    vim.cmd [[packadd nvim-web-devicons]]
    vim.cmd [[packadd onedark.vim]]
    vim.cmd [[packadd plenary.nvim]]
    vim.cmd [[packadd rust-tools.nvim]]
    vim.cmd [[packadd symbols-outline.nvim]]
    vim.cmd [[packadd telescope-file-browser.nvim]]
    vim.cmd [[packadd telescope.nvim]]
    vim.cmd [[packadd telescope-ui-select.nvim]]
    vim.cmd [[packadd toggleterm.nvim]]
    vim.cmd [[packadd vimade]]
    vim.cmd [[packadd vim-vsnip]]
    vim.cmd [[packadd vim-vsnip-integ]]
    vim.cmd [[packadd which-key.nvim]]
end
