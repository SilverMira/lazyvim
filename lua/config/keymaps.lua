-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimKeymaps",
    callback = function()
      vim.keymap.del("n", "<leader><space>")
      vim.keymap.set("n", "<leader><space>", "<CMD>call VSCodeNotify('find-it-faster.findFiles')<CR>")
      vim.keymap.set("n", "<leader>ff", "<CMD>call VSCodeNotify('find-it-faster.findFiles')<CR>")
      vim.keymap.set("n", "<leader>sg", "<CMD>call VSCodeNotify('find-it-faster.findWithinFiles')<CR>")
    end,
  })
end
