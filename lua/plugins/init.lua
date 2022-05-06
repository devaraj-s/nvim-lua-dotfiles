return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- nord theme
  use 'shaunsingh/nord.nvim'

  -- install treesitter for syntax hightlighting
  use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

  -- status line with icons
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- bufferline tabs
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- key bindings
  use "folke/which-key.nvim"
 
  -- find files and grep files 
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- comment files
  use 'numToStr/Comment.nvim'

  -- auto pair brackets etc..
  use 'windwp/nvim-autopairs'

  -- lsp 
  use {
      "williamboman/nvim-lsp-installer",
      {
          "neovim/nvim-lspconfig",
          config = function()
              require("nvim-lsp-installer").setup {}
              local lspconfig = require("lspconfig")
              lspconfig.sumneko_lua.setup {}
          end
      }
  }


  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

end)
