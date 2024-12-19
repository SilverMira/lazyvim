return {
  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      LazyVim.extend(opts, "server.default_settings.rust-analyzer.diagnostics.disabled", {
        "proc-macro-disabled",
      })
    end,
  },
}
