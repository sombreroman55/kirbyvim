return {
  { -- Fuzzy finder
    'nvim-telescope/telescope.nvim',
    version = '0.1.0',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  'nvim-treesitter/playground',  -- AST viewer
  'nvim-treesitter/nvim-treesitter-context',  -- AST viewer

  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  { -- Undo tree
    'mbbill/undotree',
    keys = {
      {'<leader>ut', '<cmd>UndotreeToggle<cr>', mode = 'n' }
    }
  },

  'norcalli/nvim-colorizer.lua', -- Hex colorizer

  -- LSP Support
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',

  -- Snippets
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',

  -- Utilities
  { -- Zen mode
    'folke/zen-mode.nvim',
    keys = {
      {'<leader>zz', '<cmd>ZenMode<cr>', mode = 'n' }
    }
  },

  'folke/neodev.nvim',                   -- Neovim development tools
  'lukas-reineke/indent-blankline.nvim', -- Show tablines
  'ledger/vim-ledger',
  'vimwiki/vimwiki',

  'theprimeagen/harpoon',        -- Quick buffer switching
  'theprimeagen/vim-be-good',    -- Vim training game

  { -- TPope Fugitive
    'tpope/vim-fugitive',
    keys = {
      {'<leader>gs', '<cmd>Git<cr>', mode = 'n' }
    }
  },
  'shumphrey/fugitive-gitlab.vim', -- Gitlab support for fugitive
}
