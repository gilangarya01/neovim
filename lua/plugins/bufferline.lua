return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Untuk ikon di bufferline
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",          -- Menggunakan buffer sebagai tab
                separator_style = "slant", -- Gaya pemisah
                diagnostics = "nvim_lsp",  -- Menampilkan LSP diagnostics di buffer
                offsets = {
                    { filetype = "NvimTree", text = "File Explorer", text_align = "center" }
                },
                show_close_icon = false,
                show_buffer_close_icons = false,
            }
        })
    end,
}
