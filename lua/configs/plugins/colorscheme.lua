return {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('onedark').setup  {
          -- Main options --
          style = 'warmer'
        }
        require('onedark').load()
    end,
}

