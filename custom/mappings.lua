local M = {}

M.mappings = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ["<leader>q"] = { "<cmd>TroubleToggle<cr>", opts = { silent = true, noremap = true } },
    ["<leader>1"] = { "<cmd>Telescope find_files<cr>", opts = { silent = true, noremap = true } },
  },
}

return M
