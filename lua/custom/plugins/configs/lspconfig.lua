local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      buildFlags = { "-tags=wireinject" },
    },
  },
}
