return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            -- Konfigurasi server LSP
            -- Lua
            lspconfig.lua_ls.setup({})

            -- Javascript/Typescript
            lspconfig.ts_ls.setup({
              on_attach = function(client, bufnr)
                print("LSP started.")
              end,
			})

		    -- Emmet
		    lspconfig.emmet_ls.setup({
		        filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact" }, -- File yang mendukung Emmet
		        init_options = { 
		            html = { options = { ["bem.enabled"] = true } } -- Contoh: Enable BEM style
		        },
		    })
		    
		    -- CSS
		    lspconfig.cssls.setup({
		        capabilities = require("cmp_nvim_lsp").default_capabilities(),
		    })
		 end,
    },
}

