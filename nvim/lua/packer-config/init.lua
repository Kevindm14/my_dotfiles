return require 'packer'.startup(function(use)
    use 'lewis6991/impatient.nvim'
    use {
        -- Easily speed up your neovim startup time!. A faster version of filetype.vim
        'nathom/filetype.nvim',
        commit = ""
    }
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'marko-cerovac/material.nvim'
    use 'navarasu/onedark.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    use "rafamadriz/neon"
    use 'Mofiqul/dracula.nvim'
    use 'tiagovla/tokyodark.nvim'
    use 'Mofiqul/vscode.nvim'
    use 'tanvirtin/monokai.nvim'

    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'

    use 'nvim-lualine/lualine.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
        event = "BufWinEnter",
        config = "require('treesitter-config')"
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        event = "BufWinEnter",
        config = "require('bufferline-config')"
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = "require('blankline-config')",
        event = "BufRead"
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('gitsigns').setup { current_line_blame = true }
        end
    }

    -- Git
    use({ "tpope/vim-fugitive" })
    --

    use 'tamton-aquib/staline.nvim'

    use "rktjmp/highlight-current-n.nvim"

    -- use {
    --   'tamton-aquib/staline.nvim',
    --   requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    --   event = "BufRead",
    --   config = "require('staline-config')"
    -- }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {
            { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', commit = "", run = 'make' }, -- FZF sorter for telescope written in c
            { 'nvim-telescope/telescope-media-files.nvim', commit = "" }, -- Telescope extension to preview media files using Ueberzug.
            { 'nvim-telescope/telescope-file-browser.nvim', commit = "" } -- File Browser extension for telescope.nvim

        }
    }

    use { 'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter" }
    use { 'p00f/nvim-ts-rainbow', after = "nvim-treesitter" }
    use { 'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp" }

    use {
        'neovim/nvim-lspconfig',
        requires = {
            { 'j-hui/fidget.nvim', commit = "", event = 'BufRead', config = "require('fidget-config')" }, {
                'rmagatti/goto-preview',
                commit = "",
                after = 'nvim-lspconfig',
                keys = { 'gp' },
                config = "require('goto-preview')"
            }
        }
    }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'onsails/lspkind-nvim' }

    use { 'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead" }

    -- use {
    --     "startup-nvim/startup.nvim",
    --     requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    --     config = function()
    --         -- require('startup-config')
    --         require "startup".setup()
    --     end
    -- }

    use({
        "goolord/alpha-nvim",
        config = function()
            require("alpha-config.init").setup()
        end
        -- disable = disable_plugins.alpha,
    })

    use { "akinsho/toggleterm.nvim", config = "require('toggleterm-config')" }

    use { 'tami5/lspsaga.nvim', config = "require('lspsaga-config')" }
    use 'williamboman/nvim-lsp-installer'
    use { 'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')" }

    use { "terrortylor/nvim-comment", config = "require('comment-config')" }

    use 'karb94/neoscroll.nvim'
end)
