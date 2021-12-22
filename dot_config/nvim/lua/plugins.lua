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

  		-- rust
  		use {
  			'simrat39/rust-tools.nvim',
  			config = [[require('config.rust_tools')]],
  		}

		use {
			 'crispgm/nvim-go',
				requires = {
					{'nvim-lua/popup.nvim'},
					{'nvim-lua/plenary.nvim'}
				},
				config = [[require('config.nvim_go')]],
				disable = true
		}

		use {
				  'lewis6991/gitsigns.nvim',
				requires = { 'nvim-lua/plenary.nvim' },
				config = [[require('config.gitsigns')]],
		}
									-- }
end)
