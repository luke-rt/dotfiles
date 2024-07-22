-- [[ Basic Keymaps ]]

-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

-- nvimtree keymaps
vim.keymap.set("n", "<c-n>", "<cmd>NvimTreeToggle<cr>", { desc = "nvim-tree: toggle" })

-- Comment keymaps
vim.keymap.set({ "n", "v" }, "<leader>/", function() require('Comment.api').toggle.linewise.current() end,
	{ noremap = true, silent = true, desc = 'Comment linewise' })
