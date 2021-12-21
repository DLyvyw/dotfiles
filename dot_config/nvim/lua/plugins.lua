return require('packer').startup(function()
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		-- treesiter
		use {
				'nvim-treesitter/nvim-treesitter',
				config = [[require('config.nvim_treesitter')]],
		}

		-- LSP
		use { 
				'neovim/nvim-lspconfig',
				config = [[require('config.nvim_lspconfig')]],
		}
		
		use { 
				'williamboman/nvim-lsp-installer',
				
		}
		
		-- cmp
		use {
			'hrsh7th/nvim-cmp',
			config = [[require('config.nvim_cmp')]],
			
		}

		-- telescope
		use {
				'nvim-telescope/telescope.nvim',
				requires = { {'nvim-lua/plenary.nvim'} },
				config = [[require('config.telescope')]]
		}
		
		use {
			{ 'tpope/vim-fugitive', cmd = { 'Git', 'Gstatus', 'Gblame', 'Gpush', 'Gpull' }, disable = true },
    		{ 'TimUntersberger/neogit', cmd = 'Neogit', config = [[require('config.neogit')]] },
  		}
  		
  		-- rust 
  		use {
  			'simrat39/rust-tools.nvim',
  			config = [[require('config.rust_tools')]],
  		}
end)
