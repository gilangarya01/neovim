return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		cmdline = {
			format = {
				cmdline = {
					pattern = "^:",
					icon = "",
					lang = "vim",
					view = "cmdline_popup", -- Menampilkan di tengah atas
				},
			},
		},
		views = {
			cmdline_popup = {
				position = {
					row = 5, -- Atur posisi vertikal (lebih tinggi lebih ke atas)
					col = "50%", -- Pusat horizontal
				},
				size = {
					width = 60, -- Atur lebar command line
					height = "auto", -- Sesuaikan tinggi otomatis
				},
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
