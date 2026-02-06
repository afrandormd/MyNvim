return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 10,
            open_mapping = [[<C-/>]],
            direction = "horizontal",
            -- shade_terminals = true,
            start_in_insert = true,
            persist_size = true,
            persist_mode = true,
        })

        -- toggle terminal default
        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { silent = true })

        -- back to normal mode from terminal
        vim.keymap.set("t", "jj", [[<C-\><C-n>]], { silent = true })
    end,
}

