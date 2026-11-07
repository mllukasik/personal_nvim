-- Harpoon 2: quick navigation between frequently used files
-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2

vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
}

local harpoon = require 'harpoon'
harpoon:setup()

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = '[A]dd file to harpoon' })
vim.keymap.set('n', '<leader><Tab>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Open harpoon quick menu' })
