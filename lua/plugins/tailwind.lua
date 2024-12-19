return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.setup = opts.setup or {}
      local tailwind = opts.setup.tailwindcss
      opts.setup.tailwindcss = function(arg, options)
        tailwind(arg, options)
        LazyVim.extend(options, "settings.tailwindCSS.experimental.classRegex", {
          'class\\s*[:]\\s*"([^"]*)',
          "class\\s*[:]\\s*'([^']*)",
          "class\\s*[:]\\s*`([^`]*)",
        })
      end
    end,
  },
}
