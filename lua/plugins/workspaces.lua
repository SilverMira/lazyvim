return {
  {
    "natecraddock/workspaces.nvim",
    event = "VeryLazy",
    opts = {
      hooks = {
        open_pre = function()
          local has_persistence = require("lazyvim.util").has("persistence.nvim")

          if has_persistence then
            local persistence = require("persistence")
            persistence.save()
            persistence.stop()
          end
        end,
        open = function()
          local has_persistence = require("lazyvim.util").has("persistence.nvim")

          if has_persistence then
            local persistence = require("persistence")
            persistence.start()
            persistence.load()
          end
        end,
      },
    },
    config = function(_, opts)
      require("workspaces").setup(opts)
      require("lazyvim.util").on_load("telescope.nvim", function()
        require("telescope").load_extension("workspaces")
      end)
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local projects = {
        action = "Telescope workspaces",
        desc = " Projects",
        icon = " ",
        key = "p",
      }

      projects.desc = projects.desc .. string.rep(" ", 43 - #projects.desc)
      projects.key_format = "  %s"

      table.insert(opts.config.center, 3, projects)
    end,
  },
}
