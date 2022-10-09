local M = {}

M.general = {
  i = {
    ["jj"] = { "<Esc>", "escape insert mode", opts = { nowait = true } },
    ["jk"] = { "<Esc>", "escape insert mode", opts = { nowait = true } },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols symbol_width=50 <CR>", "lsp document symbols" },
  },
}

M.hop = {
  n = {
    ["<leader><leader>w"] = { "<cmd> HopWord <CR>", "hint all words" },
    ["<leader><leader>j"] = { "<cmd> HopLine <CR>", "hint line" },
    ["<leader><leader>k"] = { "<cmd> HopLine <CR>", "hint line" },
  },
}

return M
