local lsp = require('lsp-zero')
lsp.preset("recommended")

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
	["C-n"] = cmp.mapping.complete(),
})

lsp.ensure_installed(
{
'rust_analyzer',
}
)

lsp.setup()

require("flutter-tools").setup {}
