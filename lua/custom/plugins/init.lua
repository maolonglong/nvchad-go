return {
  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "gopls",
        "goimports",
        "shfmt",
        "shellcheck",
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- UI
  ["goolord/alpha-nvim"] = { disable = false },
  ["folke/which-key.nvim"] = { disable = false },
  ["NvChad/ui"] = {
    override_options = {
      statusline = { separator_style = "block" },
    },
  },

  -- Git
  ["lewis6991/gitsigns.nvim"] = {
    override_options = { current_line_blame = true },
  },

  -- Treesitter
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "go",
        "gomod",
        "gowork",
      },
    },
  },

  -- Editor
  ["abecodes/tabout.nvim"] = {
    after = { "nvim-treesitter", "nvim-cmp" },
    config = function()
      require("tabout").setup()
    end,
  },
  ["easymotion/vim-easymotion"] = {},
  ["tpope/vim-surround"] = {},
  ["justinmk/vim-sneak"] = {},
  ["mg979/vim-visual-multi"] = {},
}
