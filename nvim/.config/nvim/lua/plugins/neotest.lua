return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- "vim-test/vim-test",
    "nvim-neotest/neotest-plenary",
    -- "nvim-neotest/neotest-vim-test",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-plenary"),
        -- require("neotest-vim-test"),
      },
    })

    require('neotest').output.open({ quiet = true })

    vim.keymap.set("n", "<leader>tt", function()
      require("neotest").run.run()
    end, { desc = "Run nearest test" })

    vim.keymap.set("n", "<leader>tf", function()
      require("neotest").run.run(vim.fn.expand("%"))
    end, { desc = "Run entire test file" })

    vim.keymap.set("n", "<leader>tl", function()
      require("neotest").run.run_last()
    end, { desc = "Run last test" })

    vim.keymap.set("n", "<leader>ts", function()
      require("neotest").summary.open()
    end, { desc = "Open test summary" })

    vim.keymap.set("n", "<leader>tp", function()
      require("neotest").output_panel.toggle()
    end, { desc = "Open test output panel" })

    vim.keymap.set("n", "<leader>to", function()
      require("neotest").output.open()
    end, { desc = "Open output modal" })
  end
}
