vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>gb", ":Git blame <CR>", { silent = true });
vim.keymap.set("n", "<leader>op", vim.cmd.GBrowse);

