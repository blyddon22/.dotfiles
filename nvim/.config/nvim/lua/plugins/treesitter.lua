return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("lazy").setup({{
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
          local configs = require("nvim-treesitter.configs")

          configs.setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "go", "dart", "javascript", "html", "java" },
            sync_install = false,
            auto_install = true,
            ignore_install = {},
            modules = {},
            highlight = { enable = true },
            indent = { enable = true },
          })
        end
      }})
    end,
  }
}
