-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)
local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.backup = false
opt.scrolloff = 10
opt.relativenumber = true
opt.wrap = false

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.formatting {}
  end,
})
