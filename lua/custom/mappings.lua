local M = {}

M.general = {
  i = {
    ["jj"] = { "<Esc>", "escape insert mode" },
    ["kk"] = { "<Esc>", "escape insert mode" },
  },
  v = {
    ["p"] = { "pgvy", "paste" },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols symbol_width=50 <CR>", "lsp document symbols" },
  },
}

return M
