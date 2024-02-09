vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "k", "a", { noremap = true })
vim.keymap.set("n", "j", "t", { noremap = true })
vim.keymap.set("n", "h", "i", { noremap = true })
vim.keymap.set("n", "l", "u", { noremap = true })
vim.keymap.set("n", "a", "j", { noremap = true })
vim.keymap.set("n", "u", "k", { noremap = true })
vim.keymap.set("n", "i", "h", { noremap = true })
vim.keymap.set("n", "t", "l", { noremap = true })

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
