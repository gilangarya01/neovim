function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("i", "jj", "<Esc>")
map("n", "<C-a>", "ggVG")
map("n", "<C-s>", "<CMD>w<CR>")

-- NeoTree
map("n", "<leader>b", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- Telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
