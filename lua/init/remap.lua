vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>n", vim.cmd.nohlsearch)
vim.keymap.set("n", "<leader>gn", vim.cmd.tabnew)
