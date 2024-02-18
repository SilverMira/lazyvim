return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    keys = function()
      return {
        {
          "<A-S-h>",
          function()
            require("smart-splits").resize_left()
          end,
          desc = "Resize left (Split)",
        },
        {
          "<A-S-j>",
          function()
            require("smart-splits").resize_down()
          end,
          desc = "Resize down (Split)",
        },
        {
          "<A-S-k>",
          function()
            require("smart-splits").resize_up()
          end,
          desc = "Resize up (Split)",
        },
        {
          "<A-S-l>",
          function()
            require("smart-splits").resize_right()
          end,
          desc = "Resize right (Split)",
        },
        {
          "<C-h>",
          function()
            require("smart-splits").move_cursor_left({ at_edge = "stop" })
          end,
          desc = "Move left (Split)",
        },
        {
          "<C-j>",
          function()
            require("smart-splits").move_cursor_down({ at_edge = "stop" })
          end,
          desc = "Move down (Split)",
        },
        {
          "<C-k>",
          function()
            require("smart-splits").move_cursor_up({ at_edge = "stop" })
          end,
          desc = "Move up (Split)",
        },
        {
          "<C-l>",
          function()
            require("smart-splits").move_cursor_right({ at_edge = "stop" })
          end,
          desc = "Move right (Split)",
        },
      }
    end,
  },
}
