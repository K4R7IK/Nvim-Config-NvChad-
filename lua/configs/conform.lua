-- Svelte formatter location
local prettier_svelte = '/home/k4r7ik/.local/share/nvim/mason/packages/svelte-language-server/node_modules/svelte-language-server/node_modules/prettier-plugin-svelte/plugin.js'

-- custom/conform.lua
local options = {

  -- custom formatter
  formatters = {
    svelte_fmt = {
      command = "prettier",
      args = { "--plugin", prettier_svelte, "$FILENAME" },
    },
  },

  formatters_by_ft = {
    svelte = { "svelte_fmt" },

    lua = { "stylua" },

    -- webdev
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    prisma = { "prettier" },
  },
}

require("conform").setup(options)
