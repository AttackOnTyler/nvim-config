vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local nvset = function(lhs, rhs)
    vim.keymap.set({ "n", "v" }, lhs, rhs, { noremap = true })
end

nvset("k", "a")
nvset("j", "t")
nvset("h", "i")
nvset("l", "u")
nvset("a", "j")
nvset("u", "k")
nvset("i", "h")
nvset("t", "l")

vim.api.nvim_create_autocmd('filetype', {
    pattern = 'netrw',
    desc = 'Better mappins for netrw',
    callback = function()
        local bind = function(lhs, rhs)
            vim.keymap.set('n', lhs, rhs, {remap = false, buffer = true})
        end

        bind('u', 'k')
        bind('a', 'j')
    end
})
