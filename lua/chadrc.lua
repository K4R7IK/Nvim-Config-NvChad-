---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"
local arts = require "arts"

M.ui = {
  cmp = {
    icons = true,
    lspkind_text = true,
  },
  nvdash = {
    load_on_startup = true,
    header = arts,
  },
  statusline = {
    theme = "vscode_colored",
  },
  tabufline = {
    order = { "buffers", "tabs" },
  },
  term = {
    term = {
      winopts = { number = false, relativenumber = false },
      sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
      float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
    },
  },
  lsp = { signature = true },
}

M.base46 = {
  theme = "rxyhn",
  theme_toggle = { "rxyhn" },
  transparency = flase,
  -- hl_override = highlights.override,
  -- hl_add = highlights.add,
}

return M