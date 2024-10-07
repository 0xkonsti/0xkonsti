vim.g.mapleader = "\\"

vim.keymap.set("n", "<leader>xx", vim.cmd.Ex)

-- Buffers
vim.keymap.set("n", "<S-h>", vim.cmd.bprevious)
vim.keymap.set("n", "<S-l>", vim.cmd.bnext)
vim.keymap.set("n", "<S-d>", vim.cmd.bdelete)
vim.keymap.set("n", "<leader>##", vim.cmd.bdelete)

-- Neotree
vim.keymap.set("n", "<C-t>", vim.cmd.Neotree)
vim.keymap.set("n", "<C-f>", "<cmd>Neotree reveal<cr>")
vim.keymap.set("n", "<C-e>", "<cmd>Neotree current<cr>")

-- LSP

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gI", vim.lsp.buf.implementation)
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gK", vim.lsp.buf.signature_help)
vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set({ "n", "x" }, "<leader>cc", vim.lsp.codelens.run)

-- Copilot
vim.keymap.set("i", "<S-tab>", function()
	vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end)
