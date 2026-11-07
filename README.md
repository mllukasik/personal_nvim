# personal-nvim

My personal Neovim configuration, based on and extended from
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Requirements

- [Neovim](https://github.com/neovim/neovim/releases) (tested on 0.12.6)

## Changes from kickstart.nvim

### Options

- Relative line numbers enabled by default
- Nerd Font icons enabled (`vim.g.have_nerd_font = true`)
- On WSL, a warning is shown at startup if `xclip` is missing

### Key mappings

| Mode | Keys | Action |
|------|------|--------|
| n, v | `<S-Insert>` | Paste from system clipboard (Windows) |
| i    | `<S-Insert>` | Paste from system clipboard (Windows) |
| x    | `p` | Paste without overwriting the unnamed register |
| v    | `c` | Delete into the black hole register (keeps the unnamed register intact) |
| n    | `<C-w>` | Open the file explorer (netrw, `:Ex`) |
| n    | `<leader>a` | Add current file to harpoon |
| n    | `<leader><Tab>` | Toggle harpoon quick menu |

### Additional plugins

- [harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) – quick navigation between frequently used files

## Credits

Based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) by the nvim-lua team.

