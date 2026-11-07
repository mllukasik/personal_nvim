-- Change clopboard for better wsl integration
-- requires wl-clipboard installed
if vim.fn.has 'wsl' == 1 then
  if vim.fn.executable 'xclip' == 0 then
    print "xclip not found, clipboard integration won't work. sudo apt install xclip"
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

