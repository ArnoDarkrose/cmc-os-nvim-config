return {
    "roobert/action-hints.nvim",
    opts = {
        template = {
            definition = { text = " ⊛", color = "#add8e6" },
            references = { text = " ↱%s", color = "#ff6666" },
        },
        use_virtual_text = true,
    },
    config = function()
        require("action-hints").setup(opts)
    end,
}
