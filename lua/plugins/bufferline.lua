return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup{}
        -- move next
        vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<cr>", { noremap = true, silent = true })
        -- move prev
        vim.keymap.set("n", "<s-tab>", ":BufferLineCyclePrev<cr>", { noremap = true, silent = true })
        -- close current buffer
        vim.keymap.set("n", "<leader>bd", ":bdelete!<cr>", { noremap = true, silent = true })
        -- close non pin buffer
        vim.keymap.set("n", "<leader>bD", ":BufferLineCloseOthers<cr>", { noremap = true, silent = true })
        -- toggle buffer pin
        vim.keymap.set("n", "<leader>bp", ":BufferLineTogglePin<cr>", { noremap = true, silent = true })
    end
}
