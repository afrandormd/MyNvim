return {
  -- Mason
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Mason bridge + LSP setup
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "cssls",
        "html",
        "emmet_ls",
        "ts_ls",
        "svelte",
      },
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)

      -- local lspconfig = require("lspconfig")
      local lspconfig = vim.lsp.config

      -- Lua
      lspconfig.lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      -- Web
      lspconfig.html = {}
      lspconfig.cssls = {}
      lspconfig.svelte = {}

      -- with custom formatting for TypeScript
      lspconfig.ts_ls = {
        on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = true
        end,
      }

      -- Emmet
      lspconfig.emmet_ls = {
        filetypes = {
          "html",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "svelte",
        },
      }

      -- enable server
      vim.lsp.enable({
          "lua_ls",
          "html",
          "cssls",
          "ts_ls",
          "svelte",
          "emmet_ls",
      })
    end,
  },
}

