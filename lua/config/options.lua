-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local shell_fallbacks = {
  "elvish",
  "nu",
  "powershell",
  "bash",
}

for _, shell in ipairs(shell_fallbacks) do
  if vim.fn.executable(shell) then
    vim.o.shell = shell
    break
  end
end
