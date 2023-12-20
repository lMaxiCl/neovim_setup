--lsp for vim configuration
require("neodev").setup({})

local lsp_zero = require("lsp-zero")
lsp_zero.preset("recommended")

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
lsp_zero.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	--['<C-CR>'] = cmp.mapping.confirm( {select = true} ),
	["<C-Space>"] = cmp.mapping.complete(),
})

lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		["golangci-lint"] = { "go" },
		["rust_analyzer"] = { "rust" },
		["flutter"] = { "dart", "flutter" },
	},
})

lsp_zero.ensure_installed({
	"lua_ls",
	"gopls",
	"rust_analyzer",
})

local lspconfig = require("lspconfig")
lspconfig.gopls.setup({
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			gofumpt = true,
		},
	},
})

lsp_zero.setup()

require("flutter-tools").setup({})
