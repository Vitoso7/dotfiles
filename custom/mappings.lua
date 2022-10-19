local M = {}

M.mappings = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ["<leader>z"] = { "<cmd>TroubleToggle<cr>", opts = { silent = true, noremap = true } },
  },
}

return M
