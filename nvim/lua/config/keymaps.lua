-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit Insert Mode" })
vim.keymap.set("n", "L", ":tabnext<CR>", { desc = "Pindah ke tab berikutnya" })
vim.keymap.set("n", "H", ":tabprevious<CR>", { desc = "Pindah ke tab sebelumnya" })
