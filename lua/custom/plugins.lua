local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.gitsigns,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
          require "custom.configs.treesitter-context"
        end,
      },
      {
        "abecodes/tabout.nvim",
        event = "InsertEnter",
        config = function()
          require "custom.configs.tabout"
        end,
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require "custom.configs.better-escape"
    end,
  },

  {
    "phaazon/hop.nvim",
    event = "BufReadPost",
    branch = "v2",
    config = function()
      require "custom.configs.hop"
    end,
  },

  {
    "rainbowhxch/accelerated-jk.nvim",
    event = "BufWinEnter",
    config = function()
      require "custom.configs.accelerated-jk"
    end,
  },

  {
    "hrsh7th/vim-eft",
    event = "BufReadPost",
  },

  {
    "mg979/vim-visual-multi",
    event = "BufReadPost",
    init = function()
      require "custom.configs.visual-multi"
    end,
  },

  {
    "tpope/vim-surround",
    event = "BufReadPost",
  },

  {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
    config = function()
      require "custom.configs.illuminate"
    end,
  },

  {
    "karb94/neoscroll.nvim",
    event = "BufReadPost",
    config = function()
      require "custom.configs.neoscroll"
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
