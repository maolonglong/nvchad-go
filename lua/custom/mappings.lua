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
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "find document symbols" },
  },
}

M.symbolsoutline = {
  n = {
    ["<C-t>"] = { "<cmd> SymbolsOutline <CR>", "toggle symbols outline" },
  },
}

return M
