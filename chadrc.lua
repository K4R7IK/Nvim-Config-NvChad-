---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local arts = require "custom.arts"

M.ui = {
  theme = "decay",
  -- theme_toggle = { "decay" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
  nvdash = {
    load_on_startup = true,
    header = arts,
  },
  statusline = {
    theme = "minimal",
  },
  tabufline = {
    overriden_modules = function(modules)
      table.remove(modules, 4)
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"
return M
