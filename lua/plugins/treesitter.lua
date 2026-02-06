return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
      ensure_installed = {
          "html",
          "css",
          "javascript",
          "typescript",
          "tsx",
          "lua",
          "json"
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
  },
}
