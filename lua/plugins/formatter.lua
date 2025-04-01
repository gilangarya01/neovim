return {
    "stevearc/conform.nvim",
    config = function()
        local formatters_list = vim.g.formatters_list or {}

        -- Buat daftar formatter secara otomatis
        local formatters_by_ft = {}
        for _, formatter in ipairs(formatters_list) do
            formatters_by_ft[formatter] = { formatter }
        end

        require("conform").setup({
            formatters_by_ft = formatters_by_ft,
            format_on_save = {
                lsp_fallback = true,
                timeout_ms = 1000,
            },
        })
    end,
}
