---@type ChadrcConfig
local M = {}

-- For copilotchat.nvim
local disabled_plugins = require("nvchad.configs.lazy_nvim").performance.rtp.disabled_plugins

-- Path to overriding theme and highlights files
local highlights = require "highlights"
local arts = require "arts"

M.ui = {
  theme = "decay",
  theme_toggle = { "decay" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
  nvdash = {
    load_on_startup = true,
    header = arts,
  },
  statusline = {
    theme = "vscode_colored",
  },
  tabufline = {
    overriden_modules = function(modules)
      table.remove(modules, 4)
    end,
  },
}

M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = vim.tbl_filter(function(x)
        return x ~= "rplugin"
      end, disabled_plugins),
    },
  },
}

-- M.plugins = "plugins"

-- check core.mappings for table structure
-- M.mappings = require "mappings"

return M
