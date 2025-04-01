function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("i", "jj", "<esc>")
map("n", "<C-a>", "ggVG")
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>")

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Cari File" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Cari dalam File" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Cari Buffer" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Cari Bantuan" })

-- Neotree
map("n", "<leader>e", ":Neotree toggle<CR>")  -- Toggle Neo-tree
map("n", "<leader>o", ":Neotree focus<CR>")   -- Fokus ke Neo-tree
map("n", "<leader>r", ":Neotree refresh<CR>") -- Refresh Neo-tree

-- Terminal
map("n", "<C-\\>", ":ToggleTerm<CR>")            -- Buka/tutup terminal floating
map("t", "<C-\\>", "<C-\\><C-n>:ToggleTerm<CR>") -- Keluar dari mode terminal
map("t", "<Esc>", "<C-\\><C-n>")                 -- Gunakan ESC untuk keluar dari terminal mode

-- Bufferline
map("n", "]", ":BufferLineCycleNext<CR>") -- Pindah ke buffer berikutnya
map("n", "[", ":BufferLineCyclePrev<CR>") -- Pindah ke buffer sebelumnya
map("n", "<C-w>", ":bdelete<CR>")         -- Menutup buffer saat ini
