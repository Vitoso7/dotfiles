local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.diagnostics.eslint_d,
  -- b.code_actions.eslint_d,

  -- webdev stuff
  b.formatting.prettierd.with {
    filetypes = {
      "javascript",
      "markdown",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
    },
  },

  -- Lua
  b.formatting.stylua,

  -- Rust
  b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
