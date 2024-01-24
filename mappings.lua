---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>s"] = { "<cmd> SymbolsOutline <CR>", "Symbol Table" },
    ["<leader>q"] = { "<cmd> q! <CR>", "Quit"},
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "format with conform",
    },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit" },
  },
}

-- more keybinds!

return M
