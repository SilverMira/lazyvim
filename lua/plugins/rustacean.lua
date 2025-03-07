return {
  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      LazyVim.extend(opts, "server.default_settings.rust-analyzer.diagnostics.disabled", {
        "proc-macro-disabled",
      })
    end,
  },
  {
    "julianolf/nvim-dap-lldb",
    dependencies = { "mfussenegger/nvim-dap" },
    ft = { "rust" },
  },
}
