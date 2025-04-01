return {
    "echasnovski/mini.pairs",
    version = "*",
    config = function()
        require("mini.pairs").setup({
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            skip_ts = { "string" },
            skip_unbalanced = true,
            markdown = true,
        })
    end,
}
