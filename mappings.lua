---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { "<cmd> SymbolsOutline <CR>", "Symbol Table" },
  },
}

-- more keybinds!

return M
