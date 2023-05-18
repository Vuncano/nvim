--local status_ok, _ = pcall(require, "lspconfig")
--if not status_ok then
--    print("lspconfig status not ok")
--  return
--end

local lspconfig = require('lspconfig')
--lspconfig.fortls.setup{}

require ("prime.lsp.mason")
require("prime.lsp.hands").setup()
require ("prime.lsp.null-ls")

