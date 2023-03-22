---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["gl"] = { "$", "goto end of line", opts = { nowait = true } },
    ["gh"] = { "_", "goto start of line", opts = { nowait = true } },
    ["<leader>f"] = { "<cmd> Telescope find_files <CR>", "find files" , opts = {nowait = true}}
  },
}

-- more keybinds!

return M
