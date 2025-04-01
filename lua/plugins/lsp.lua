return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim", -- Plugin tambahan untuk menginstal formatter/linter
		"folke/neodev.nvim",
	},
	config = function()
		require("mason").setup()

		-- Daftar LSP yang akan diinstal otomatis
		local lsp = {
			"lua_ls",
		}

		-- Daftar formatter yang akan diinstal otomatis
		local formatter = {
			"stylua",
		}

		-- Konfigurasi Mason LSP
		require("mason-lspconfig").setup({
			ensure_installed = lsp,
			automatic_installation = true,
		})

		-- Konfigurasi Mason Tool Installer untuk formatter/linter
		require("mason-tool-installer").setup({
			ensure_installed = formatter,
			auto_update = true,
			run_on_start = true,
		})

		-- Simpan daftar formatter untuk digunakan di formatter.lua
		vim.g.formatters_list = formatter

		-- Konfigurasi LSP
		local lspconfig = require("lspconfig")
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = require("cmp_nvim_lsp").default_capabilities(),
				})
			end,
		})
	end,
}
