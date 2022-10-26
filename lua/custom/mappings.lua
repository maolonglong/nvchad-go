local M = {}

M.eft = {
  n = {
    f = { "<Plug>(eft-f)", "eft-f" },
    F = { "<Plug>(eft-F)", "eft-F" },
    t = { "<Plug>(eft-t)", "eft-t" },
    T = { "<Plug>(eft-T)", "eft-T" },
    [";"] = { "<Plug>(eft-repeat)", "eft-repeat" },
  },
}

M.accelerated_jk = {
  n = {
    j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
    k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
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
    ["<leader><leader>b"] = { "<cmd> HopWord <CR>", "hint all words" },
    ["<leader><leader>j"] = { "<cmd> HopLine <CR>", "hint line" },
    ["<leader><leader>k"] = { "<cmd> HopLine <CR>", "hint line" },
  },
}

return M
