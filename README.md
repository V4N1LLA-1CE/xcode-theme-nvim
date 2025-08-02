# Xcodedark Theme for Neovim

A neovim theme that mimics xcodedark from xcode16. I was inspired by xcode theme as I thought it was super clean in my iOS development course in university, so I decided to make a version that is kind off accurate for my main languages (Go, Typescript, and hopefully Java soon). 

NOTE: The theme will work for other languages as well, but colour usage for language features may not be accurate to xcode outside of Go and Typescript.

## Go Development
<img width="1507" height="889" alt="Screenshot 2025-08-02 at 10 42 41 pm" src="https://github.com/user-attachments/assets/43bf2372-e33e-4210-a7d5-e64516d27d81" />
<img width="1507" height="889" alt="Screenshot 2025-08-02 at 10 43 43 pm" src="https://github.com/user-attachments/assets/f43243de-732c-4ea5-945d-b7715e6927ab" />

## Typescript/React Development
<img width="1507" height="889" alt="Screenshot 2025-08-02 at 10 44 00 pm" src="https://github.com/user-attachments/assets/fb268289-5189-446b-b28a-6c757625f801" />
<img width="1507" height="889" alt="Screenshot 2025-08-02 at 10 44 22 pm" src="https://github.com/user-attachments/assets/c7d54412-1f9a-4e57-87f5-dee313c69167" />

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


Inspired by Xcode 16's Default Dark theme. Created during iOS development coursework when I fell in love with Xcode's clean syntax highlighting.

*for developers who appreciate clean, consistent code highlighting*

