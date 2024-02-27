---@type ChadrcConfig
local M = {}

-- For copilotchat.nvim
local disabled_plugins = require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local arts = require "custom.arts"

M.ui = {
  theme = "yoru",
  theme_toggle = { "yoru" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = false,
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

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
