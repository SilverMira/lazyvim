local M = {}

M.is_neovide = function()
  return vim.g.neovide
end

M.apply = function()
  if M.is_neovide() then
    vim.o.guifont = "Iosevka Nerd Font:h15"
  end
end

return M
