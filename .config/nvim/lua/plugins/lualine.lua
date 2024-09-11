return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = { theme = "horizon" },
        sections = {
            lualine_x = { require("action-hints").statusline },
        },
    },
    config = function(spec, opts)
        require("lualine").setup(opts)
    end,
}
