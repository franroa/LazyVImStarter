return {
  {
    "gbprod/substitute.nvim",
    dependencies = {
      -- which key integration
      {
        "folke/which-key.nvim",
        opts = function(_, opts)
          if require("lazyvim.util").has("noice.nvim") then
            opts.defaults["<leader>S"] = { name = "+substitute" }
            opts.defaults["<leader>Sr"] = { name = "+range" }
            opts.defaults["<leader>Sx"] = { name = "+range" }
          end
        end,
      },
    },
    keys = {
      {
        "<leader>so",
        function()
          require('substitute').operator()
        end,
        desc = "operator"
      },
      {
        "<leader>Sl",
        function()
          require('substitute').line()
        end,
        desc = "line"
      },
      {
        "<leader>Se",
        function()
          require('substitute').eol()
        end,
        desc = "end of line"
      },
      { -- TODO: visual mode
        "<leader>Sv",
        function()
          require('substitute').visual()
        end,
        desc = "visual"
      },
      {
        "<leader>Sr",
        function()
          require('substitute.range').operator()
        end,
        desc = "operator"
      },
      { -- TODO: x mode
        "<leader>Sr",
        function()
          require('substitute.range').visual()
        end,
        desc = "visual"
      },
      {
        "<leader>Srs",
        function()
          require('substitute.range').word()
        end,
        desc = "word"
      },
      {
        "<leader>Sx",
        function()
          require('substitute.exchange').operator()
        end,
        desc = "operator"
      },
      {
        "<leader>Sxx",
        function()
          require('substitute.exchange').line()
        end,
        desc = "line"
      },
      { -- TODO: x mode
        "<leader>SX",
        function()
          require('substitute.exchange').visual()
        end,
        desc = "visual"
      },
      {
        "<leader>Sxc",
        function()
          require('substitute.exchange').cancel()
        end,
        desc = "cancel"
      },
    },
    opts = {
      on_substitute = nil,
      yank_substituted_text = true,
      highlight_substituted_text = {
        enabled = true,
        timer = 500,
      },
      range = {
        prefix = "X",
        prompt_current_text = false,
        confirm = false,
        complete_word = false,
        motion1 = false,
        motion2 = false,
        suffix = "",
      },
      exchange = {
        motion = false,
        use_esc_to_cancel = true,
      },
    }

  }
}
