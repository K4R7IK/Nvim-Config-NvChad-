if vim.g.neovide then
  -- Neovide options
  vim.g.neovide_fullscreen = false
  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_animate_in_insert_mode = true

  -- Neovide Fonts
  vim.o.guifont = "Maple Mono"

  -- Settings paddings.
  vim.g.neovide_padding_top = 3
  vim.g.neovide_padding_bottom = 3
  vim.g.neovide_padding_right = 3
  vim.g.neovide_padding_left = 3

  vim.g.neovide_refresh_rate_idle = 5
end

