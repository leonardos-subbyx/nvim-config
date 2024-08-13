-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("n", ";", "$", { noremap = true })

vim.keymap.del("n", "<leader>l", {})
vim.keymap.del("n", "<leader>L", {})

local lsp_actions_keys = { "f", "r", "a", "R", "d" }
for _, key in ipairs(lsp_actions_keys) do
  vim.keymap.set("n", "<leader>l" .. key, "<leader>c" .. key, { remap = true })
end

vim.keymap.set("n", "<C-\\>", "<leader>ft", { remap = true })

