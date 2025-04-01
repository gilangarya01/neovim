return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- Opsional, untuk ikon
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true, -- Tutup Neo-tree jika hanya jendela ini yang tersisa
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            filesystem = {
                filtered_items = {
                    visible = false, -- Sembunyikan file tersembunyi secara default
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
                follow_current_file = { enabled = true }, -- Neo-tree mengikuti file aktif
                hijack_netrw_behavior = "open_default",   -- Gantikan netrw dengan Neo-tree
            },
            window = {
                width = 30,
            },
        })
    end,
}
