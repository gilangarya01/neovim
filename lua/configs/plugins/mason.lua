return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      'WhoIsSethDaniel/mason-tool-installer.nvim'
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",   -- Lua
          "ts_ls",    -- TypeScript/JavaScript
          "html",     -- HTML
          "cssls",    -- CSS
          "emmet_ls", -- Emmet
        },
      })
      require('mason-tool-installer').setup {
        ensure_installed = {
          "stylua",
          "prettier"
        }
      }

      local lspconfig = require("lspconfig")
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      })
    end,
  },
}
