return {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
        style = 'deep',
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
        colors = {
            grey = '#808999'
        },
        highlights = {
            LineNr = {fg = '#adafb2'},
            -- hopefully this gets greyed out
        },
    },
    config = function(_, opts)
        local onedark = require("onedark")
        onedark.setup(opts)

        onedark.load()
    end,
}
