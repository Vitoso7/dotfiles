local M = {}

M.mappings = {
  i = {
   ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}

return M
