--vim.g.copilot_no_tab_map = true
--vim.g.copilot_assume_mapped = true

--local copilot = require("copilot")
--vim.keymap.set("i", "<M-k>", copilot.next, { expr = true, silient = true })
--vim.keymap.set("i", "<M-j>", copilot.previous, { expr = true, silient = true })
--vim.keymap.set("i", "<M-y>", copilot.accept, { expr = true, silient = true })
--vim.api.nvim_set_keymap("i", "<M-y>", "copilot#Accept()", { expr = true, silent = true })
--vim.api.nvim_set_keymap("i", "<M-k>", "copilot#Next()", { expr = true, silent = true })
--vim.api.nvim_set_keymap("i", "<M-j>", "copilot#Previous()", { expr = true, silent = true })

-- Change '<C-g>' here to any keycode you like.
vim.keymap.set("i", "<A-y>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
vim.keymap.set("i", "<A-;>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<A-,>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<A-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })
