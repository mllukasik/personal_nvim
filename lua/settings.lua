-- Make relative line numbers default
vim.opt.relativenumber = true

-- Change clopboard for better wsl integration
-- requires wl-clipboard installed
if vim.fn.has 'wsl' == 1 then
  if vim.fn.executable 'wl-copy' == 0 then
    print "wl-clipboard not found, clipboard integration won't work"
  else
    vim.g.clipboard = {
      name = 'wl-clipboard (wsl)',
      copy = {
        ['+'] = 'wl-copy --foreground --type text/plain',
        ['*'] = 'wl-copy --foreground --primary --type text/plain',
      },
      paste = {
        ['+'] = function()
          return vim.fn.systemlist('wl-paste --no-newline|sed -e "s/\r$//"', { '' }, 1) -- '1' keeps empty lines
        end,
        ['*'] = function()
          return vim.fn.systemlist('wl-paste --primary --no-newline|sed -e "s/\r$//"', { '' }, 1)
        end,
      },
      cache_enabled = true,
    }
  end
end

-- map shift + insert as paste
if vim.fn.has 'windows' == 1 then
  vim.keymap.set('n', '<S-Insert>', '"+p', { noremap = true, silent = true })
  vim.keymap.set('v', '<S-Insert>', '"+p', { noremap = true, silent = true })
  vim.keymap.set('i', '<S-Insert>', '<C-r>+', { noremap = true, silent = true })
end

-- stop p from overwriting buffer
vim.keymap.set('x', 'p', 'P', { noremap = true })

-- stop c from overwriting buffer
vim.keymap.set('v', 'c', [["_d]])

-- Closing current buffor
vim.keymap.set('n', '<C-w>', vim.cmd.Ex)
