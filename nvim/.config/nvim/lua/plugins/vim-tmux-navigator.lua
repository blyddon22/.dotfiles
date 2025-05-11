return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-H>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-J>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-K>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-L>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
    lazy = false,
  }
}
