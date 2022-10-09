local override = require "custom.plugins.configs.override"

return {
  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      ---@diagnostic disable-next-line: different-requires
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },
  ["williamboman/mason.nvim"] = { override_options = override.mason },

  -- UI
  ["goolord/alpha-nvim"] = { disable = false },
  ["folke/which-key.nvim"] = { disable = false },
  ["NvChad/ui"] = { override_options = override.ui },

  -- Git
  ["lewis6991/gitsigns.nvim"] = { override_options = override.gitsigns },

  -- Treesitter
  ["nvim-treesitter/nvim-treesitter"] = { override_options = override.treesitter },
  ["nvim-treesitter/nvim-treesitter-textobjects"] = { after = "nvim-treesitter" },
  ["nvim-treesitter/nvim-treesitter-context"] = {
    after = "nvim-treesitter",
    config = function()
      require "custom.plugins.configs.ts-ctx"
    end,
  },

  -- Editor
  ["abecodes/tabout.nvim"] = {
    opt = true,
    event = "InsertEnter",
    wants = "nvim-treesitter",
    after = "nvim-cmp",
    config = function()
      require "custom.plugins.configs.tabout"
    end,
  },
  ["phaazon/hop.nvim"] = {
    opt = true,
    event = "BufReadPost",
    branch = "v2",
    config = function()
      require "custom.plugins.configs.hop"
    end,
  },
  ["mg979/vim-visual-multi"] = {
    opt = true,
    event = "BufReadPost",
  },
  ["tpope/vim-surround"] = {
    opt = true,
    event = "BufReadPost",
  },
}
