local M = {}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "json-lsp",
    "tailwindcss-language-server",
  },
}

M.ui = {
  statusline = {
    separator_style = "arrow", -- default/round/block/arrow
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },
}

return M
