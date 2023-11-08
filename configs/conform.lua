-- custom/conform.lua
local options = {

  -- custom formatter
  formatters = {
    svelte_fmt = {
      command = "prettier",
      args = { "--plugin", "prettier-plugin-svelte", "$FILENAME" },
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
  },
}

require("conform").setup(options)
