local M = {}
local override = require "custom.override"

M.ui = {
  theme = "tokyonight",
  transparency = true
}

M.mappings = require "custom.mappings"

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["williamboman/mason.nvim"] = override.mason,
  }
}
return M
