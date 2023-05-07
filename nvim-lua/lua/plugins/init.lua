return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },

  {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  },

  'nvim-treesitter/playground',
  'theprimeagen/harpoon',
  'mbbill/undotree',

  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      -- Snippet Collection (Optional)
      { 'rafamadriz/friendly-snippets' },
    }
  },

  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',

  'tpope/vim-commentary',

  'lukas-reineke/indent-blankline.nvim',

  'preservim/nerdtree',
  'ryanoasis/vim-devicons',

  'tyru/open-browser.vim',
  -- 'aklt/plantuml-syntax',
  'weirongxu/plantuml-previewer.vim',
}
