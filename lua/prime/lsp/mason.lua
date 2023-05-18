require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").lua_ls.setup{}
require("lspconfig").fortls.setup{}
require("lspconfig").texlab.setup{}
require("lspconfig").jedi_language_server.setup{}
require("lspconfig").pylsp.setup{}

local servers = {
	"lua_ls",
--    "fortls",
    "texlab"
}

	local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    print("lspconfig_status not ok")
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("prime.lsp.hands").on_attach,
		capabilities = require("prime.lsp.hands").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "prime.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
