return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = { style = "terminal" },
    },
  },
  keys = {
    {
      "<leader>tj",
      function()
        Snacks.terminal.toggle(nil, {
          count = 1,
          win = { position = "float", backdrop = 60 },
        })
      end,
      mode = { "n", "t" },
      desc = "Toggle Terminal 1 (Float)",
    },
    {
      "<leader>tk",
      function()
        Snacks.terminal.toggle(nil, { count = 2 })
      end,
      mode = { "n", "t" },
      desc = "Terminal 2",
    },
    {
      "<leader>tl",
      function()
        Snacks.terminal.toggle(nil, { count = 3 })
      end,
      mode = { "n", "t" },
      desc = "Terminal 3",
    },
    {
      "<leader>t;",
      function()
        Snacks.terminal.toggle(nil, {
          count = 4,
          win = { position = "right", width = 0.4 },
        })
      end,
      mode = { "n", "t" },
      desc = "Toggle Terminal 4 (Vertical)",
    },
  },
}
