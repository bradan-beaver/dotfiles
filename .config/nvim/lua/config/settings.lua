-- Binds
vim.g.mapleader = "<Space>"
vim.keymap.set("n", "<Leader>se", ":setlocal spell spelllang=en_au<cr>", { desc = "Enable spell check", noremap = true })
vim.keymap.set("n", "<Leader>sd", ":setlocal nospell<cr>", { desc = "Disable spell check", noremap = true })

-- Markdown Preview binds
vim.keymap.set("n", "<Leader>mp", "<Plug>MarkdownPreview")

-- End binds

-- Settings
vim.opt.colorcolumn = ""
