return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 15,                -- Ukuran terminal (15 baris)
            open_mapping = [[<C-\>]], -- Shortcut untuk membuka terminal
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "horizontal", -- Mode horizontal (bawah)
            close_on_exit = true,
            shell = vim.o.shell,
        })
    end,
}
