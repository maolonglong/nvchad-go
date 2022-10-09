local opt = vim.opt
local g = vim.g
local autocmd = vim.api.nvim_create_autocmd

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.backup = false
opt.swapfile = false

opt.scrolloff = 10
opt.relativenumber = true

g.VM_show_warnings = 0
g.VM_default_mappings = 0
g.VM_maps = {
  ["Find Under"] = "gb",
  ["Find Subword Under"] = "gb",
}

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
