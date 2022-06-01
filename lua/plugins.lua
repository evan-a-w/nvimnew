return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use "EdenEast/nightfox.nvim"

	use 'nvim-lua/plenary.nvim'

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

    use 'nvim-lua/completion-nvim'
end)
