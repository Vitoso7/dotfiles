local M = {}

M.mappings = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ["<leader>a"] = { ":lua vim.lsp.buf.hover()<cr>", opts = { silent = true, noremap = true } },
    ["<leader>1"] = { ":Telescope find_files<cr>", opts = { silent = true, noremap = true } },
    ["<leader>z"] = { ":lua vim.diagnostic.open_float()<cr>", opts = { silent = true, noremap = true } },
  },
}

return M
