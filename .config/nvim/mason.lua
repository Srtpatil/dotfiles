local mason_ok, mason = pcall(require, "mason")
local mason_lsp_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

local status_ok = mason_ok and mason_lsp_ok
if not status_ok then
  return
end

mason.setup()
mason_lspconfig.setup()
