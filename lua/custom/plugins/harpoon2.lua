return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    local function add()
      harpoon:list():add()
    end

    local function view()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end

    vim.keymap.set('n', '<leader>a', add, { desc = '[A]dd file to harpoon' })
    vim.keymap.set('n', '<leader><Tab>', view, { desc = 'Open harpoon quick menu' })
  end,
}
