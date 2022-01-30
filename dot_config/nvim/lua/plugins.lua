require "target_specific"

vim.cmd [[packadd packer.nvim]]

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
    }
    use {'nvim-telescope/telescope-ui-select.nvim'}
    use {'nvim-telescope/telescope-file-browser.nvim'}

    -- themes
    use { 'joshdick/onedark.vim' }

    -- icons
    use { 'kyazdani42/nvim-web-devicons' }

    -- treesiter
    use { 'nvim-treesitter/nvim-treesitter' }

    -- pairs
    use {'p00f/nvim-ts-rainbow' }

    use { 'windwp/nvim-autopairs' }

    use { "lukas-reineke/indent-blankline.nvim" }

    -- LSP
    use { 'neovim/nvim-lspconfig'}

    use { 'williamboman/nvim-lsp-installer' }

    use { 'arkav/lualine-lsp-progress' }

    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
    }

    -- symbols outline
    use { 'simrat39/symbols-outline.nvim' }

    use { 'stevearc/aerial.nvim' }

    -- key helpers
    use { "folke/which-key.nvim" }

    -- cmp
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/vim-vsnip-integ' }

    -- rust
    use { 'simrat39/rust-tools.nvim' }

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
    }

    -- explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' }
    } 

    -- DAP
    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"},
    }

    -- terminal
    use { "akinsho/toggleterm.nvim", }

    -- fade inactive windows
    use {"TaDaa/vimade"}

    use {"chentau/marks.nvim"}

end,
config = {
    opt_default = true,
    display = {
        open_fn = require('packer.util').float,
    }
} })

vim.cmd [[packadd lightspeed.nvim]]

if not vim.g.vscode 
then
    vim.cmd [[packadd aerial.nvim]]
    require('config.aerial')

    vim.cmd [[packadd nvim-cmp]]
    vim.cmd [[packadd cmp-nvim-lsp]]
    require('config.nvim_cmp')

    vim.cmd [[packadd nvim-treesitter]]
    require('config.nvim_treesitter')

    vim.cmd [[packadd nvim-web-devicons]]
    require('config.nvim_web_devicons')

    vim.cmd [[packadd nvim-lspconfig ]]
    require('config.nvim_lspconfig')

    vim.cmd [[packadd nvim-lsp-installer]]
    vim.cmd [[packadd plenary.nvim]]
    vim.cmd [[packadd guihua.lua]]


    vim.cmd [[packadd gitsigns.nvim]]
    require('config.gitsigns')

    vim.cmd [[packadd indent-blankline.nvim]]
    require('config.indent_blankline')

    vim.cmd [[packadd lualine.nvim]]
    vim.cmd [[packadd lualine-lsp-progress]]
    require('config.lualine')

    vim.cmd [[packadd navigator.lua]]
    require('config.navigator')

    vim.cmd [[packadd nvim-autopairs]]
    require('config.autopairs')


    vim.cmd [[packadd nvim-dap]]
    vim.cmd [[packadd nvim-dap-ui]]
    require('config.nvim_dap_ui')

    vim.cmd [[packadd nvim-tree.lua]]
    require('config.nvim_tree')

    vim.cmd [[packadd nvim-ts-rainbow]]
    vim.cmd [[packadd onedark.vim]]
    vim.cmd [[packadd rust-tools.nvim]]
    require('config.rust_tools')
    vim.cmd [[packadd symbols-outline.nvim]]

    vim.cmd [[packadd telescope.nvim]]
    vim.cmd [[packadd telescope-file-browser.nvim]]
    vim.cmd [[packadd telescope-ui-select.nvim]]
    require('config.telescope')

    vim.cmd [[packadd toggleterm.nvim]]
    require('config.toggleterm')

    if not(vim.g.target_is_rpi) then
        vim.cmd [[packadd vimade]]
        vim.cmd [[VimadeFadeLevel 0.8]]
    end

    vim.cmd [[packadd vim-vsnip]]
    vim.cmd [[packadd vim-vsnip-integ]]
    vim.cmd [[packadd which-key.nvim]]
    require('config.which_key')

    vim.cmd [[packadd marks.nvim]]
    require('config.marks')
end
