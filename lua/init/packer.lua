-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()   local fn = vim.fn   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'   if fn.empty(fn.glob(install_path)) > 0 then     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})     vim.cmd [[packadd packer.nvim]]     return true   end   return false end local packer_bootstrap = ensure_packer()


-- Only required if you have packer configured as `opt`
-- vim.cmd([[packadd packer.nvim]])


return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({ "wesleimp/stylua.nvim" })

	use({ "ellisonleao/gruvbox.nvim" })

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("folke/neodev.nvim")

	--use({ "github/copilot.vim", branch = "release" })
	use({
		"Exafunction/codeium.vim",
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
		commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
	})

	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup()
		end,
	})

	use({
		"neanias/everforest-nvim",
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup()
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = {
			{ "nvim-lua/plenary.nvim" },
		},
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})

	use("nvim-tree/nvim-web-devicons")

	use({
		"folke/trouble.nvim",
		command = "Trouble",
		opts = {
			icons = false,
			fold_open = "v", -- icon used for open folds
			fold_closed = ">", -- icon used for closed folds
			indent_lines = false, -- add an indent guide below the fold icons
			signs = {
				-- icons / text used for a diagnostic
				error = "error",
				warning = "warn",
				hint = "hint",
				information = "info",
			},
			use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
		},
	})

	--DAP
	--use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use({ "theHamsta/nvim-dap-virtual-text", requires = { "mfussenegger/nvim-dap" } })
	use("leoluz/nvim-dap-go")
	-- alternative go debugger
	-- use("fatih/vim-go")
	use({
		"pcolladosoto/tinygo.nvim",
		config = function()
			require("tinygo").setup()
		end,
	})

	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},

		use("nvim-lua/plenary.nvim"),

		use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }),

		use("tpope/vim-fugitive"),
	})
end)
