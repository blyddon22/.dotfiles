return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
      {
        "saghen/blink.cmp",
        opts = {
          sources = {
            -- add lazydev to your completion providers
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
              lazydev = {
                name = "LazyDev",
                module = "lazydev.integrations.blink",
                -- make lazydev completions top priority (see `:h blink.cmp`)
                score_offset = 100,
              },
            },
          },
        },
      },
      { "mason-org/mason.nvim" },
      {
        "mason-org/mason-lspconfig.nvim",
        opts = {
          ensure_installed = { "lua_ls", "gopls", "jdtls" },
        },
        dependencies = {
          { "mason-org/mason.nvim", opts = {} },
          "neovim/nvim-lspconfig",
        },
      },
      { "mfussenegger/nvim-jdtls" },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- Set global capabilities for all LSP servers
      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      vim.lsp.config('jdtls', { cmd = { 'jdtls' } })

      vim.lsp.enable('dartls')
      vim.lsp.enable('jdtls')
      vim.lsp.enable('ts_ls')
      -- vim.lsp.enable('harper_ls')

      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
    end,
  }
}
