local M = {}

M.ui = {
  theme = "gruvchad",
  hl_override = {
    CursorLine = {
      bg = "one_bg",
    },
  },
}

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

return M
