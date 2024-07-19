-- harpoon.lua

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  requires = {
    { "nvim-lua/plenary.nvim" }
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: Append to list" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Harpoon: Toggle Quick Menu" })

    -- vim.keymap.set("n", "<M-j>", function() harpoon:list():select(1) end, { desc = "Harpoon: Go to 1" })
    -- vim.keymap.set("n", "<M-k>", function() harpoon:list():select(2) end, { desc = "Harpoon: Go to 2" })
    -- vim.keymap.set("n", "<M-h>", function() harpoon:list():select(3) end, { desc = "Harpoon: Go to 3" })
    -- vim.keymap.set("n", "<M-l>", function() harpoon:list():select(4) end, { desc = "Harpoon: Go to 4" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-j>", function() harpoon:list():prev() end, { desc = "Harpoon: Go to Prev" })
    vim.keymap.set("n", "<C-k>", function() harpoon:list():next() end, { desc = "Harpoon: Go to Next" })
  end,
}
