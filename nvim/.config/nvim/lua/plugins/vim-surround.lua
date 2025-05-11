return {
  "tpope/vim-surround",
  event = "VeryLazy",
  config = function()
    vim.g.surround_no_mappings = 1
    vim.keymap.set("n", "ds", "<Plug>Dsurround")
    vim.keymap.set("n", "cs", "<Plug>Csurround")
    vim.keymap.set("n", "csw", "<Plug>CsurroundW")
    vim.keymap.set("x", "S", "<Plug>VSurround")
    vim.keymap.set("x", "gS", "<Plug>VSurround")
  end,
}
