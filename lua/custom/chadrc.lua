-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "nord",
}

M.mappings = require "custom.mappings"

M.plugins = require "custom.plugins"

return M
