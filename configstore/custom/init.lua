vim.opt.relativenumber = true
vim.opt.guicursor = "i:block"
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format(nil, 5000)]]
