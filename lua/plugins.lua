return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'williamboman/nvim-lsp-installer'

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

    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'

    use 'airblade/vim-gitgutter'

    use 'github/copilot.vim'

    use 'simrat39/rust-tools.nvim'

    use 'SirVer/ultisnips'

    use 'vim-syntastic/syntastic'

    use {'ZhiyuanLck/smart-pairs', event = 'InsertEnter', config = function() require('pairs'):setup() end}

    use 'ms-jpq/coq-nvim'

    use 'christoomey/vim-tmux-navigator'

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
end}
end)
