local wezterm = require("wezterm")
local h = require("utils/helpers")
local M = {}

M.get_font = function(fonts)
  local family = h.get_random_entry(fonts)
  local weight = string.find(family, "DankMono") and "Bold" or nil
  return wezterm.font_with_fallback({ { family = family, weight = weight }, { family = "DankMono Nerd Font" } })
end

return M
