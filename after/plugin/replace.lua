-- For local replace
vim.api.nvim_set_keymap("n", "gr", "gd[{V%::s/<C-R>///gc<left><left><left>", { noremap = true })

-- For global replace
vim.api.nvim_set_keymap("n", "gR", "gD:%s/<C-R>///gc<left><left><left>", { noremap = true })
