return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'doom',
      config = {
        header = {
          "                                     ",
          "                                     ",
          "                                     ",
          "                                     ",
          " ██╗      █████╗ ███╗   ██╗ ██████╗  ",
          " ██║     ██╔══██╗████╗  ██║██╔════╝  ",
          " ██║     ███████║██╔██╗ ██║██║  ███╗ ",
          " ██║     ██╔══██║██║╚██╗██║██║   ██║ ",
          " ███████╗██║  ██║██║ ╚████║╚██████╔╝ ",
          " ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝  ",
          "                                     ",
          "                                     ",
        },
        center = {
          {
            icon = "  ",
            desc = "Find File                   ",
            key = "f",
            action = "Telescope find_files",
          },
          {
            icon = "  ",
            desc = "New File                    ",
            key = "n",
            action = "enew",
          },
          {
            icon = "󰒲  ",
            desc = "Lazy                        ",
            key = "l",
            action = "Lazy",
          },
          {
            icon = "󰿘  ",
            desc = "Mason                       ",
            key = "m",
            action = "Mason",
          },
          {
            icon = "  ",
            desc = "Config Neovim               ",
            key = "c",
            action = "cd ~/.config/nvim | edit init.lua",
          },
          {
            icon = "  ",
            desc = "Quit",
            action = "qa",
            key = "q",
          },
        },
        footer = {
          "                           ",
          "🚀 Neovim loaded yoo!"
        }
      },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
