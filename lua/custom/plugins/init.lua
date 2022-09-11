return {
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
  ["goolord/alpha-nvim"] = { disable = false },
  ["folke/which-key.nvim"] = { disable = false },
  ["easymotion/vim-easymotion"] = {},
  ["simrat39/symbols-outline.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("symbols-outline").setup()
    end,
  },
  ["lewis6991/gitsigns.nvim"] = {
    override_options = { current_line_blame = true },
  },
  ["NvChad/ui"] = {
    override_options = {
      statusline = { separator_style = "block" },
      tabufline = { lazyload = false },
    },
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "go",
      },
    },
  },
}
