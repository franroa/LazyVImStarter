return {
  {
    "https://github.com/ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
      -- which key integration
      {
        "folke/which-key.nvim",
        opts = function(_, opts)
          if require("lazyvim.util").has("noice.nvim") then
            opts.defaults["<leader>h"] = { name = "+harpoon" }
          end
        end,
      },
    },
    keys = {
      {
        "<leader>hf",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Add file"
      },
      {
        "<leader>ht",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Toggle UI"
      },
      {
        "<leader>hn",
        function()
          require("harpoon.ui").nav_next()
        end,
        desc = "Next mark"
      },
      {
        "<leader>hp",
        function()
          require("harpoon.ui").nav_prev()
        end,
        desc = "Prev mark"
      },
    },
  },
}
