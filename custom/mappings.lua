local M = {}

M.mappings = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ["<leader>a"] = { ":lua vim.lsp.buf.hover()<cr>", opts = { silent = true, noremap = true } },
    ["<leader>z"] = { ":lua vim.diagnostic.open_float()<cr>", opts = { silent = true, noremap = true } },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  t = {
    -- toggle in terminal mode
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

return M
