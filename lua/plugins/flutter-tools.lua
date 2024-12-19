return {
  {
    "akinsho/flutter-tools.nvim",
    ft = { "dart" },
    keys = {
      { "<leader>dr", "<Cmd>Telescope flutter commands<CR>", desc = "Flutter commands", ft = { "dart" } },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    opts = function(_, opts)
      opts.flutter_path = vim.fn.exepath("flutter")
      if vim.fn.has("win32") == 1 then
        opts.flutter_path = opts.flutter_path .. ".bat"
      end
      opts.debugger = {
        enabled = true,
      }
    end,
    config = function(_, opts)
      local has_telescope, telescope = pcall(require, "telescope")
      if has_telescope then
        telescope.load_extension("flutter")
      end
      require("flutter-tools").setup(opts)
    end,
  },
}
