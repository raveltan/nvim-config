return require('packer').startup(function()
	-- Packer just manages itself
	use 'wbthomason/packer.nvim'

	-- nvim LSP configs
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'williamboman/nvim-lsp-installer'

	-- Luasnip
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	--

	-- Treesitter is life
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- Gaze deeply into the unknown
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Use fzf native for telescope
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}

	-- nvim file tree. Alternative to NerdTree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}

	-- Git stuff
	use 'airblade/vim-gitgutter'

	-- comment stuff out
	use 'preservim/nerdcommenter'

	use 'tpope/vim-surround'
	use 'tpope/vim-fugitive'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.theta'.config)
		end
	}

	use {'mg979/vim-visual-multi'}

	-- Typescript. Oh Typescript. Where art thou Typescript.
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'jose-elias-alvarez/nvim-lsp-ts-utils'
	use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
	use 'marko-cerovac/material.nvim'

	-- LEARN
	use 'chentoast/marks.nvim'
	use 'folke/lsp-colors.nvim'
	use {
	  "folke/trouble.nvim",
	  requires = "kyazdani42/nvim-web-devicons",
	  config = function()
		require("trouble").setup {
		  -- your configuration comes here
		  -- or leave it empty to use the default settings
		  -- refer to the configuration section below
		}
	  end
	}
	use 'onsails/lspkind.nvim'
	use {
	  "ray-x/lsp_signature.nvim",
	}
	use {
	  "j-hui/fidget.nvim",
	  config = function()
		require("fidget").setup {
		}
	  end
	}
	use {
	  "amrbashir/nvim-docs-view",
	  opt = true,
	  cmd = { "DocsViewToggle" },
	  config = function()
		require("docs-view").setup {
		  position = "right",
		  width = 60,
		}
	  end
	}
	use {
		's1n7ax/nvim-terminal',
		config = function()
			vim.o.hidden = true
			require('nvim-terminal').setup()
		end,
	}
end)
