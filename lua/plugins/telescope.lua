 return {
    {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        -- add builtin variable
        local builtin = require('telescope.builtin')

        -- search file
        vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})

        -- search keyword (grep) in all files
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

        -- search keyword in help page
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

        -- search all, show hidden files
        vim.keymap.set('n', '<leader>fa', "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", {})

        -- search keyword in current buffer
        vim.keymap.set('n', '<leader>fz', "<cmd> Telescope current_buffer_fuzzy_find <CR>", {})
    end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {}
                }
              }
            }
            require("telescope").load_extension("ui-select")
        end
    },
}

