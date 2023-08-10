vim.wo.number = true

vim.o.mouse = 'a'

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.wo.signcolumn = 'yes'

vim.o.cursorline = true

vim.o.termguicolors = true

vim.o.undofile = true

vim.o.breakindent = true

vim.o.tabstop = 4

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Better completion experience
vim.o.completeopt = 'menuone,noselect'

