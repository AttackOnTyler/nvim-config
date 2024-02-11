return {
    'mbbill/undotree',
    config = function()
        vim.api.nvim_exec([[
            function! g:Undotree_CustomMap()
                nmap <buffer> u <plug>UndotreeNextState
                nmap <buffer> a <plug>UndotreePreviousState
                nmap <buffer> l <plug>UndotreeUndo
            endfunction
        ]], true)

        vim.keymap.set("n", "<leader>u", function() vim.cmd.UndotreeToggle() vim.cmd.UndotreeFocus() end, {})
    end
}
