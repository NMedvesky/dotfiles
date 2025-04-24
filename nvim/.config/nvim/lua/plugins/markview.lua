return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local presets = require("markview.presets")

        -- require("markview.extras.checkboxes").setup()

        require("markview").setup({
            preview = {
                icon_provider = "devicons",
            },
            markdown = {
                headings = presets.headings.glow,
            },
        })
    end,
}
