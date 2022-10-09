local M = {}

M.ui = {
  statusline = { separator_style = "block" },
}

M.gitsigns = {
  current_line_blame = true,
}

M.treesitter = {
  ensure_installed = {
    "bash",
    "go",
    "gomod",
    "gowork",
    "json",
    "lua",
    "make",
    "yaml",
  },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]c"] = "@class.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[c"] = "@class.outer",
      },
    },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "gopls",
    "goimports",
    "shfmt",
    "shellcheck",
  },
}

return M
