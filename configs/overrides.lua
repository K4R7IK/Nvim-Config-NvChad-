local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "svelte",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  autotag = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "svelte-language-server",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.neophyte = {
  fonts = {
    {
      name = "Maple Mono",
    },
    -- Shorthand for no features or variations
    "Symbols Nerd Font",
    "Noto Color Emoji",
  },
  font_size = {
    kind = "width", -- 'width' | 'height'
    size = 10,
  },
  -- Multipliers of the base animation speed.
  -- To disable animations, set these to large values like 1000.
  cursor_speed = 2,
  scroll_speed = 2,
  -- Increase or decrease the distance from the baseline for underlines.
  underline_offset = 1,
  -- For transparent window effects, use this to set the default background color.
  -- This is because most colorschemes in transparent mode unset the background,
  -- which normally defaults to the terminal background, but we don't have that here.
  -- You must also pass --transparent as a command-line argument to see the effect.
  -- Channel values are in the range 0-255.
  bg_override = {
    r = 48,
    g = 52,
    b = 70,
    a = 128,
  },
}
return M
