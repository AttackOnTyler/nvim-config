return {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
        style = 'darker',
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        }
    },
    config = function(_, opts)
        local onedark = require("onedark")
        onedark.setup(opts)

        onedark.load()
    end,
}
