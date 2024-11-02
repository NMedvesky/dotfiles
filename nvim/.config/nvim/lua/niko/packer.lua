-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Treesitter
    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-context")
    use("nvim-treesitter/nvim-treesitter-textobjects")

    -- Folke
    use("folke/zen-mode.nvim")
    use("folke/twilight.nvim")
    use("folke/trouble.nvim")

    -- Fun
    use("eandrju/cellular-automaton.nvim")
    use("ThePrimeagen/vim-be-good")

    -- Color scheme
    use("olimorris/onedarkpro.nvim")
    use("folke/tokyonight.nvim")
    use("EdenEast/nightfox.nvim")
    use("rafi/awesome-vim-colorschemes")

    -- Python
    use("rcarriga/nvim-dap-ui")
    use("mfussenegger/nvim-dap")
    use("mfussenegger/nvim-dap-python")

    -- Misc
    use("nvim-lua/plenary.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("alexghergh/nvim-tmux-navigation")
    use("lervag/vimtex")
    use("dhruvasagar/vim-table-mode")
    use("RRethy/nvim-align")
    use("preservim/nerdcommenter")
    use("machakann/vim-swap")
    use("nvim-neotest/nvim-nio")

    use { "lopi-py/luau-lsp.nvim", requires = { "nvim-lua/plenary.nvim" } }

    use {
        "epwalsh/obsidian.nvim",
        tag = "*", -- recommended, use latest release instead of latest commit
        requires = { "nvim-lua/plenary.nvim" }
    }

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects"
        }
    }

    use {
        'NvChad/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup {
                user_default_options = {
                    css = true,
                    RRGGBBAA = false,
                    AARRGGBB = true,
                }
            }
        end
    }

    use {
        'ThePrimeagen/harpoon',
        branch = "harpoon2",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim" }
        }
    }

    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require("ibl").setup()
        end
    }

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'ayu_mirage'
                }
            }
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        }
    }



    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        }
    }
end)
