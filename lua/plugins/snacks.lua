return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            ignored = true,
            win = {
              input = {
                keys = {
                  ["<M-h>"] = { "toggle_hidden", mode = { "n", "i" } },
                  ["<M-i>"] = { "toggle_ignored", mode = { "n", "i" } },
                },
              },
            },
          },
          explorer = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
