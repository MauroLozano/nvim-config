-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

--Java single file execution
vim.keymap.set("n", "<leader>jr", function()
  local relative_path = vim.fn.expand("%:.")

  local class_path = relative_path:gsub("src/main/java/", ""):gsub("src/test/java/", ""):gsub("%.java$", "") -- Quita la extensión al final

  local class_name = class_path:gsub("/", ".")

  print("Ejecutando: " .. class_name)
  vim.cmd('split | term mvn exec:java -Dexec.mainClass="' .. class_name .. '"')
end, { desc = "Must execute current Java with maven" })
