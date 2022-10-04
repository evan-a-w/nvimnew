vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim', opt = true }

    use 'williamboman/nvim-lsp-installer'

    use "EdenEast/nightfox.nvim"

    use 'nvim-lua/plenary.nvim'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'

    use 'airblade/vim-gitgutter'

    use 'github/copilot.vim'

    use 'simrat39/rust-tools.nvim'

    use 'SirVer/ultisnips'

    use 'vim-syntastic/syntastic'

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'ms-jpq/coq-nvim'

    use 'christoomey/vim-tmux-navigator'

    use { 'majutsushi/tagbar' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }

    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'onsails/lspkind.nvim' }
    use { 'mfussenegger/nvim-lint' }
    use { 'mhartington/formatter.nvim' }
    use { 'williamboman/mason.nvim' }

    -- Debugging
    use 'mfussenegger/nvim-dap'

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
end}
end)
