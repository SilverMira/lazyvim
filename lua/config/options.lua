-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local shell_fallbacks = {
  "nu",
  "zsh",
  "powershell",
  "bash",
}

local shell_cmds = {
  ["zsh"] = "-s -c",
  ["nu"] = "-c",
}

local shell_quote = {
  ["zsh"] = "",
}

for _, shell in ipairs(shell_fallbacks) do
  if vim.fn.executable(shell) then
    vim.o.shell = shell
    if shell_cmds[shell] then
      vim.o.shellcmdflag = shell_cmds[shell]
    end
    if shell_quote[shell] then
      vim.o.shellquote = shell_quote[shell]
      vim.o.shellxquote = shell_quote[shell]
    end
    break
  end
end

require("config.neovide").apply()

-- FIXME: To remove once neovim fixes https://github.com/neovim/neovim/issues/30985
for _, method in ipairs({ "textDocument/diagnostic", "workspace/diagnostic" }) do
  local default_diagnostic_handler = vim.lsp.handlers[method]
  vim.lsp.handlers[method] = function(err, result, context, config)
    if err ~= nil and err.code == -32802 then
      return
    end
    return default_diagnostic_handler(err, result, context, config)
  end
end
