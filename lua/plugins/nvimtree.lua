return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
        -- nvimtree position
        view = {
            side = "right", -- move to ("left" or "right")
            -- width = 30, -- optional
        },
    }
    -- toggle nvimtree
    vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", {})

    -- nvimtree focus
    vim.keymap.set("n", "<leader>o", "<cmd> NvimTreeFocus <CR>", {})
  end,
}
