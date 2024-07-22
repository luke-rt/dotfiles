-- harpoon.lua

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VeryLazy',
  requires = {
    { 'nvim-lua/plenary.nvim' },
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon: Append to list' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon: Toggle Quick Menu' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon: Go to Prev' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon: Go to Next' })
  end,
}
