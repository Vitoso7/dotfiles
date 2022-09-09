vim.opt.relativenumber = true

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)]]
