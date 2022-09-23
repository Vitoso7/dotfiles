local M = {}
local override = require "custom.override"

M.ui = {
  theme = "catppuccin",
  -- transparency = true,
}

M.mappings = require "custom.mappings"

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["williamboman/mason.nvim"] = override.mason,
    ["NvChad/ui"] = override.ui,
  },
}
return M
