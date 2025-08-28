# Xcodedark Theme for Neovim

A neovim theme that mimics xcodedark from xcode16. I was inspired by xcode theme as I thought it was super clean in my iOS development course in university, so I decided to make a version that is kind of accurate for my main languages (Go, Typescript, and hopefully Java soon). 

NOTE: This theme works best in transparent mode as shown in the screenshots

## Go Development
<img width="1512" height="982" alt="go" src="https://github.com/user-attachments/assets/c0b4effc-9c22-4a64-883f-946572453d67" />

## Elixir
<img width="1512" height="982" alt="elixir" src="https://github.com/user-attachments/assets/76bf3d32-6d9c-47de-9236-e8fc5ed65e72" />

## Typescript/React Development
<img width="1512" height="982" alt="react" src="https://github.com/user-attachments/assets/7ea0683c-8533-475f-b1d1-b10b95120a39" />

## Java
<img width="1512" height="982" alt="java" src="https://github.com/user-attachments/assets/9834399b-f52f-4159-bd7d-297c34db00fc" />


## 📦 Installation

### LazyVim

```lua
{
  "V4N1LLA-1CE/xcodedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("xcodedark").setup({
      -- New color scheme with your specifications
      transparent = true, -- or false if you prefer solid background
      
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
      
      -- Font weight customization
      styles = {
        comments = { italic = true }, 
        keywords = { bold = true }, 
        functions = {}, 
        variables = {},   
        strings = {}, 
        booleans = { bold = true }, 
        types = {}, 
        constants = {}, 
        operators = {}, 
        punctuation = {}, 
      },
      
      terminal_colors = true,
    })
    vim.cmd.colorscheme("xcodedark")
  end,
}
```

### Packer.nvim

```lua
use {
  "V4N1LLA-1CE/xcodedark.nvim",
  config = function()
    require("xcodedark").setup({
      transparent = true,
      styles = {
        keywords = { bold = true }, -- Bold keywords by default
        comments = { italic = true }, -- Italic comments, normal weight
      }
    })
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

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

When reporting issues, please include:
- Plugin manager and configuration
- Screenshots if applicable
- Minimal reproduction steps

## 🙏 Acknowledgments

Inspired by Xcode 16's Default Dark theme. Created during iOS development coursework when I fell in love with Xcode's clean syntax highlighting.

*for developers who appreciate clean, consistent code highlighting*

