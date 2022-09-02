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
    "tailwindcss-language-server"

  },
}

return M
