vim.g.mapleader = " "
vim.keymap.set("n", "<leader>tr", vim.cmd.Vexplore)

-- Visually move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Only yank from cursor to end of line
vim.keymap.set("n", "Y", "yg$")

-- Keep cursor centered when doing next/prev
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keeps cursor in place when doing J
vim.keymap.set("n", "J", "mzJ`z")

-- Create vim splits
vim.keymap.set("n", "<leader>\\", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>-", vim.cmd.split)

function Move(direction)
    vim.cmd.wincmd(direction)
end

-- Use space to go back to previous buffer
vim.keymap.set("n", "<leader><space>", "<C-^>")

-- Find & Replace
vim.keymap.set("v", "<leader>fr", "y:s/")
vim.keymap.set("n", "<leader>fr", ":%s/")

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
