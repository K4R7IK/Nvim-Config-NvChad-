---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>s"] = { "<cmd> SymbolsOutline <CR>", "Symbol Table" },
    ["<leader>q"] = { "<cmd> q! <CR>", "Quit" },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit" },
    ["<leader>mt"] = { "<cmd> MarkdownPreviewToggle <CR>", "Markdown Preview" },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "format with conform",
    },
  },
}

-- more keybinds!

return M
