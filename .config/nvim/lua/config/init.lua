vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Import plugins ]]
require("config.plugins")

-- [[ Setting options ]]
require("config.opts")

-- [[ Keymaps ]]
require("config.kemaps")

-- [[ Configure LSP ]]
require("config.lsp")

-- Setup neovim lua configuration
require('neodev').setup()
