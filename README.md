# personal-nvim

My personal Neovim configuration, based on and extended from
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Requirements

- [Neovim](https://github.com/neovim/neovim/releases) (tested on 0.12.6)
- [ripgrep](https://github.com/BurntSushi/ripgrep) – required by Telescope `live_grep`
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter) – required by nvim-treesitter to build parsers
- A C compiler – used by tree-sitter-cli to compile parsers (on Windows: MSVC from Visual Studio Build Tools)
- A [Nerd Font](https://www.nerdfonts.com/) set as the terminal font – icons are enabled (`vim.g.have_nerd_font = true`)

### Windows

```powershell
winget install --id BurntSushi.ripgrep.MSVC -e
winget install --id tree-sitter.tree-sitter-cli -e
winget install --id Microsoft.VisualStudio.2022.BuildTools -e --override "--quiet --wait --norestart --nocache --add Microsoft.VisualStudio.Workload.VCTools --includeRecommended"
winget install --id DEVCOM.JetBrainsMonoNerdFont -e
```

Restart the terminal afterwards so the updated `PATH` is picked up, and set
`JetBrainsMono NFM` (the Mono variant) as the font in Windows Terminal
(Settings → Profiles → Defaults → Appearance → Font face).

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

