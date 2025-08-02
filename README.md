# Xcodedark Theme for Neovim

A neovim theme that mimics xcodedark from xcode16.

## 📦 Installation

### LazyVim

```lua
{
  "V4N1LLA-1CE/xcodedark-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("xcodedark").setup({
      transparent = true,
      integrations = {
        telescope = true,
        nvim_tree = true,
        gitsigns = true,
        bufferline = true,
        incline = true,
        lazygit = true,
        which_key = true,
        notify = true,
      },
    })
    vim.cmd.colorscheme("xcodedark")
  end,
}
```

### Packer.nvim

```lua
use {
  "V4N1LLA-1CE/xcodedark-nvim",
  config = function()
    require("xcodedark").setup()
    vim.cmd.colorscheme("xcodedark")
  end
}
```


## ⚙️ Configuration

### Default Options

```lua
require("xcodedark").setup({
  -- Plugin integrations
  integrations = {
    telescope = true,        -- Telescope fuzzy finder
    nvim_tree = true,        -- File explorer
    gitsigns = true,         -- Git signs in gutter
    bufferline = true,       -- Buffer/tab line
    incline = true,          -- Floating filename
    lazygit = true,          -- LazyGit integration
    which_key = true,        -- Which-key popup
    notify = true,           -- Notification popups
  },
  
  -- Style customization
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    strings = {},
  },
  
  -- Additional options
  terminal_colors = true,    -- Set terminal colors
  transparent = false,       -- Transparent background
})
```

### Transparent Background

For a transparent background that works with terminal transparency:

```lua
require("xcodedark").setup({
  transparent = true,
})
```

## 🎨 Color Palette

The theme uses authentic Xcode 16 colors:

| Element | Color | Hex |
|---------|-------|-----|
| Background | Dark Gray | `#1E1E1E` |
| Foreground | White | `#FFFFFF` |
| Keywords | Pink | `#FF7AB2` |
| Strings | Coral | `#FF8170` |
| Comments | Gray | `#6C7986` |
| Numbers | Yellow | `#D9C97C` |
| Functions | Green | `#67B7A4` |
| Types | Light Blue | `#6BDFFF` |
| Parameters | Purple | `#D2A8FF` |
| Constants | Blue | `#4EB0CC` |

## 🌍 Language Support

Optimised syntax highlighting for:

- **Go** - Clean, readable syntax with proper type highlighting
- **JavaScript/TypeScript** - React/JSX support with component highlighting
- **Lua** - Neovim configuration scripting

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

When reporting issues, please include:
- Neovim version (`nvim --version`)
- Plugin manager and configuration
- Screenshots if applicable
- Minimal reproduction steps

## 🙏 Acknowledgments

- Inspired by Apple's Xcode 16 Default Dark theme
- Built for the Neovim community
- Thanks to all plugin authors for their excellent work
