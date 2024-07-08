--lsp for vim configuration
require("neodev").setup({})

local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(_, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- local cmp = require("cmp")
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- lsp_zero.defaults.cmp_mappings({
-- 	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
-- 	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
-- 	-- Confirm item
-- 	["<Tab>"] = cmp.mapping.confirm({ select = true }),
-- 	--['<C-CR>'] = cmp.mapping.confirm( {select = true} ),
-- 	["<C-Space>"] = cmp.mapping.complete(),
-- })

lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		["golangci-lint"] = { "go" },
		["rust_analyzer"] = { "rust" },
		["flutter"] = { "dart", "flutter" },
		["zls"] = { "zig" },
		["lua_ls"] = { "lua, love2d" },
	},
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "rust_analyzer", "lua_ls", "gopls", "rust_analyzer", "zls", "ols" },
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,
	},
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

lspconfig.lua_ls.setup({
	on_init = function(client)
		local path = client.workspace_folders[1].name
		if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
			return
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = true,
				library = {
					vim.env.VIMRUNTIME,
					"$HOME/lua_addons/love2d",
					-- "${3rd}/luv/library"
					-- "${3rd}/busted/library",
				},
				-- or pull in all of 'runtimepath'. NOTE: this is a lot slower
				-- library = vim.api.nvim_get_runtime_file("", true)
			},
		})
	end,
	settings = {
		Lua = {},
	},
})

lsp_zero.setup()

require("flutter-tools").setup({})
