return {
  {
    "rcarriga/nvim-notify",
    opts = function(_, opts)
      opts.max_height = math.floor(vim.o.lines * 0.3)
      opts.max_width = math.floor(vim.o.columns * 0.3)
      opts.render = "wrapped-compact"
      return opts
    end,
  },
}
